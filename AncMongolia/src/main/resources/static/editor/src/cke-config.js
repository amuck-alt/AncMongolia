const customColorPalette = [
    {
        color: 'hsl(4, 90%, 58%)',
        label: 'Red'
    },
    {
        color: 'hsl(340, 82%, 52%)',
        label: 'Pink'
    },
    {
        color: 'hsl(291, 64%, 42%)',
        label: 'Purple'
    },
    {
        color: 'hsl(262, 52%, 47%)',
        label: 'Deep Purple'
    },
    {
        color: 'hsl(231, 48%, 48%)',
        label: 'Indigo'
    },
    {
        color: 'hsl(207, 90%, 54%)',
        label: 'Blue'
    },
    {
        color: 'hsl(0, 0%, 95%)',
        label: 'LightGray'
    },

    // ...
];

ClassicEditor
.create( document.querySelector( '#editor' ), {
	fontFamily: {
		option: [
			'default',
			'Bebas Neue, cursive',
			'Cute Font, cursive',
		]
	},
	toolbar: {
		items: ['heading', '|',	
				'fontFamily', 'bold', 'italic',	'alignment', 'bulletedList', 'underline', 'fontBackgroundColor', 'fontSize', 'fontColor', /*'highlight',*/ '|',
				'indent', 'outdent', '|',
				'link',	'CKFinder',	'imageUpload', /*'blockQuote',*/ 'insertTable',	'mediaEmbed', '|', 'pageBreak', 'undo', 'redo', '|',	'code'
		]
	},
	language: 'ko',
	image: {
		toolbar: [ 'imageTextAlternative', '|', 'imageStyle:alignLeft', 'imageStyle:full', 'imageStyle:alignRight' ],
		styles: [ 'full', 'alignLeft', 'alignRight' ]
	},
	table: {
		contentToolbar: [
			'tableColumn', 'tableRow', 'mergeTableCells',
            'tableProperties', 'tableCellProperties'
		],
		tableProperties: {
            borderColors: customColorPalette,
            backgroundColors: customColorPalette
        },
        tableCellProperties: {
            borderColors: customColorPalette,
            backgroundColors: customColorPalette
        }
	},
	licenseKey: 'V345-5126-DJBD-HEFR-7ALE-6HFX-LUVC',
	ckfinder: {
		uploadUrl: '/data/upload.do'
	},
	mediaEmbed: {
        providers: [
            {
                name: 'youtube',
                url: [
					/^(?:m\.)?youtube\.com\/watch\?v=([\w-]+)/,
					/^(?:m\.)?youtube\.com\/v\/([\w-]+)/,
					/^youtube\.com\/embed\/([\w-]+)/,
					/^youtu\.be\/([\w-]+)/
				],
                html: match => {
                	const id = match[ 1 ];
					return (
						'<div style="position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;">' +
							'<iframe src="https://www.youtube.com/embed/' + id + '" ' +
								'style="position: absolute; width: 100%; height: 100%; top: 0; left: 0;" ' +
								'frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>' +
							'</iframe>' +
						'</div>'
					);
                }
            },
            {
                name: 'homepage',
                url: /^localhost:8088\/embed\/([\w-]+)/,
                html: match => {
                	const id = match[ 1 ];
                	if(id == "banner1"){
                		return (
							'<div style="position: relative; height:15rem;">' +
								'<iframe src="http://localhost:8088/embed/'+id+'.html"' +
									'style="position: absolute; width:100%; height:15rem; top:0; left:0;" ' +
									'frameborder="0" scrolling="no">' +
								'</iframe>' +
							'</div>'
    					);
                	}else{
	                	return (
							'<div style="position: relative; height:30rem;">' +
								'<iframe src="http://localhost:8088/embed/'+id+'.html"' +
									'style="position: absolute; width:100%; height:30rem; top:0; left:0;" ' +
									'frameborder="0" scrolling="no">' +
								'</iframe>' +
							'</div>'
						);
                	}
                }
            },
        ]
    },
    mention: {
        feeds: [
            {
                marker: '@',
                feed: [ '@Barney', '@Lily', '@Marshall', '@Robin', '@Ted' ],
                minimumCharacters: 1
            }
        ]
    },
} )
.then( editor => {
	window.editor = editor;	
	
} )
.catch( error => {
	console.error( error.stack );
} );

function setFrameHeight(obj){
	if(obj.contentDocument){
        obj.height = obj.contentDocument.body.offsetHeight + 40;
    } else {
        obj.height = obj.contentWindow.document.body.scrollHeight;
    }
}


function MentionCustomization( editor ) {
    // The upcast converter will convert <a class="mention" href="" data-user-id="">
    // elements to the model 'mention' attribute.
    editor.conversion.for( 'upcast' ).elementToAttribute( {
        view: {
            name: 'a',
            key: 'data-mention',
            classes: 'mention',
            attributes: {
                href: true,
                'data-user-id': true
            }
        },
        model: {
            key: 'mention',
            value: viewItem => {
                // The mention feature expects that the mention attribute value
                // in the model is a plain object with a set of additional attributes.
                // In order to create a proper object, use the toMentionAttribute helper method:
                const mentionAttribute = editor.plugins.get( 'Mention' ).toMentionAttribute( viewItem, {
                    // Add any other properties that you need.
                    link: viewItem.getAttribute( 'href' ),
                    userId: viewItem.getAttribute( 'data-user-id' )
                } );

                return mentionAttribute;
            }
        },
        converterPriority: 'high'
    } );

    // Downcast the model 'mention' text attribute to a view <a> element.
    editor.conversion.for( 'downcast' ).attributeToElement( {
        model: 'mention',
        view: ( modelAttributeValue, viewWriter ) => {
            // Do not convert empty attributes (lack of value means no mention).
            if ( !modelAttributeValue ) {
                return;
            }

            return viewWriter.createAttributeElement( 'a', {
                class: 'mention',
                'data-mention': modelAttributeValue.id,
                'data-user-id': modelAttributeValue.userId,
                'href': modelAttributeValue.link
            } );
        },
        converterPriority: 'high'
    } );
}

const items = [
    { id: '@ThorTheHammer', userId: '1', name: 'Barney Stinson', link: 'https://www.imdb.com/title/tt0460649/characters/nm0000439' },
    { id: '@세림쌤', userId: '2', name: 'Lily Aldrin', link: 'https://www.imdb.com/title/tt0460649/characters/nm0004989' },
    { id: '@marshmallow', userId: '3', name: 'Marshall Eriksen', link: 'https://www.imdb.com/title/tt0460649/characters/nm0781981' },
    { id: '@rsparkles', userId: '4', name: 'Robin Scherbatsky', link: 'https://www.imdb.com/title/tt0460649/characters/nm1130627' },
    { id: '@tdog', userId: '5', name: 'Ted Mosby', link: 'https://www.imdb.com/title/tt0460649/characters/nm1102140' }
];

function getFeedItems( queryText ) {
    // As an example of an asynchronous action, return a promise
    // that resolves after a 100ms timeout.
    // This can be a server request or any sort of delayed action.
    return new Promise( resolve => {
        setTimeout( () => {
            const itemsToDisplay = items
                // Filter out the full list of all items to only those matching the query text.
                .filter( isItemMatching )
                // Return 10 items max - needed for generic queries when the list may contain hundreds of elements.
                .slice( 0, 10 );

            resolve( itemsToDisplay );
        }, 100 );
    } );

    // Filtering function - it uses `name` and `username` properties of an item to find a match.
    function isItemMatching( item ) {
        // Make the search case-insensitive.
        const searchString = queryText.toLowerCase();

        // Include an item in the search results if name or username includes the current user input.
        return (
            item.name.toLowerCase().includes( searchString ) ||
            item.id.toLowerCase().includes( searchString )
        );
    }
}

function customItemRenderer( item ) {
    const itemElement = document.createElement( 'span' );

    itemElement.classList.add( 'custom-item' );
    itemElement.id = `mention-list-item-id-${ item.userId }`;
    itemElement.textContent = `${ item.name } `;

    const usernameElement = document.createElement( 'span' );

    usernameElement.classList.add( 'custom-item-username' );
    usernameElement.textContent = item.id;

    itemElement.appendChild( usernameElement );

    return itemElement;
}
