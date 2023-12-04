package com.crewfactory.main.util;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

public class ExcelUtil {

	private SXSSFWorkbook workBook = null;
	private Sheet sheet = null;
	private Map<String, CellStyle> styles = new HashMap<String, CellStyle >();

	public ExcelUtil() {
		this.workBook = new SXSSFWorkbook();
		this.createDefaultStyles(this.workBook);
	}

	public ExcelUtil(String sheetTitle) {
		this.workBook = new SXSSFWorkbook();
		this.sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName(sheetTitle));
		this.createDefaultStyles(workBook);
	}

	/**
	 * 엑셀파일 다운로드
	 *
	 * @param response
	 * @param downName
	 * @throws IOException
	 */
	public void download(HttpServletResponse response, String downName) throws IOException {
        response.reset();
        downName = URLEncoder.encode(downName,"UTF-8").replace("+", "%20");
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + downName + ";filename*= UTF-8''" + downName);

		try(ServletOutputStream out = response.getOutputStream()){
			write(out);
		}
	}

	/**
	 * 엑셀파일 생성
	 *
	 * @param os
	 * @throws IOException
	 */
	public void write(OutputStream os) throws IOException {
		this.workBook.write(os);
		os.flush();

		//디스크 해제
		this.workBook.dispose();
	}

	/**
	 * 셀너비 지정
	 * @param index
	 * @param width
	 */
	public void setColumnWidth(int index, int width) {
		this.sheet.setColumnWidth(index, width * 256);
	}

	/**
	 * 셀병합
	 *
	 * @param firstRow
	 * @param lastRow
	 * @param firstCol
	 * @param lastCol
	 */
	public void setMerge(int firstRow, int lastRow, int firstCol, int lastCol) {
		this.sheet.addMergedRegion(new CellRangeAddress(firstRow, lastRow, firstCol, lastCol));
	}

	/**
	 * 행 생성
	 * @param nRow
	 * @return
	 */
	public Row createRow(int nRow) {
		return this.sheet.createRow(nRow);
	}

	/**
	 * 행 생성
	 *
	 * @param nRow
	 * @param nHeight
	 * @return
	 */
	public Row createRow(int nRow, float nHeight) {
		Row row = this.sheet.createRow(nRow);
		row.setHeightInPoints(nHeight);
		return row;
	}

	/**
	 * 행 추가
	 *
	 * @param row
	 * @throws IOException
	 */
	public void appendRow(Row row) throws IOException {
		if (row.getRowNum() % 100 == 0) {
			((SXSSFSheet)row.getSheet()).flushRows(100);
		}
	}

	/**
	 * 문자형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @param width
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, String value, int width) {
		Cell cell = row.createCell(row.getPhysicalNumberOfCells());
		cell.setCellStyle(styles.get(styleName));
		cell.setCellValue(value);
		if(width != -1) {
			this.setColumnWidth(cell.getColumnIndex(), width);
		}
		return cell;
	}

	/**
	 * 문자형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, String value) {
		return this.appendCell(row, styleName, value, -1);
	}

	/**
	 * 숫자형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @param width
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, BigDecimal value, int width) {
		Cell cell = row.createCell(row.getPhysicalNumberOfCells());
		cell.setCellStyle(styles.get(styleName));

		if (value == null) {
			value = new BigDecimal("0");
		}

		cell.setCellValue(value.doubleValue());
		//cell.setCellType(CellType.NUMERIC);
		if(width != -1) {
			this.setColumnWidth(cell.getColumnIndex(), width);
		}
		return cell;
	}

	/**
	 * 숫자형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, BigDecimal value) {
		return this.appendCell(row, styleName, value, -1);
	}

	/**
	 * 날짜형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @param width
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, Date value, int width) {
		Cell cell = row.createCell(row.getPhysicalNumberOfCells());
		cell.setCellStyle(styles.get(styleName));
		cell.setCellValue(value);
		if(width != -1) {
			this.setColumnWidth(cell.getColumnIndex(), width);
		}
		return cell;
	}

	/**
	 * 날짜형 셀 추가
	 *
	 * @param row
	 * @param styleName
	 * @param value
	 * @return
	 */
	public Cell appendCell(Row row, String styleName, Date value) {
		return this.appendCell(row, styleName, value, -1);
	}

	/**
	 * 기본폰트 지정
	 *
	 * @param wb
	 * @return
	 */
	private Font createFont(SXSSFWorkbook wb) {
		Font defaultFont = wb.createFont();
		defaultFont.setFontHeightInPoints((short) 11);
		defaultFont.setFontName("맑은 고딕");
		return defaultFont;
	}


	/**
	 * 기본스타일 묶음
	 *
	 * @param wb
	 */
	private void createDefaultStyles(SXSSFWorkbook wb) {
		DataFormat df = wb.createDataFormat();

		CellStyle style;
		Font headerFont = this.createFont(wb);
		headerFont.setBold(true);
		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.index);
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		style.setFont(headerFont);
		styles.put("header", style);

		Font headerTitleUFont = this.createFont(wb);
		headerTitleUFont.setBold(true);
		// headerTitleUFont.setItalic(true);
		headerTitleUFont.setUnderline(Font.U_SINGLE);
		headerTitleUFont.setFontHeightInPoints((short) 20);
		style = wb.createCellStyle();
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(headerTitleUFont);
		styles.put("header_title_u", style);

		Font headerTitleFont = this.createFont(wb);
		headerTitleFont.setBold(true);
		headerTitleFont.setFontHeightInPoints((short) 20);
		// headerTitleFont.setItalic(true);
		style = wb.createCellStyle();
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(headerTitleFont);
		styles.put("header_title", style);

		Font headerTitleRFont = this.createFont(wb);
		headerTitleRFont.setBold(true);
		headerTitleRFont.setFontHeightInPoints((short) 20);
		// headerTitleRFont.setItalic(true);
		style = wb.createCellStyle();
		style.setAlignment(HorizontalAlignment.RIGHT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(headerTitleRFont);
		styles.put("header_title_r", style);

		style = wb.createCellStyle();
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(headerTitleRFont);
		styles.put("header_title_c", style);

		style = createBorderedStyle(wb);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.index);
		styles.put("blank", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.index);
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		style.setFont(headerFont);
		style.setDataFormat(df.getFormat("yyyy-mm-dd"));
		styles.put("header_date", style);

		Font font1 = this.createFont(wb);
		font1.setBold(true);
		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font1);
		styles.put("cell_b", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font1);
		styles.put("cell_b_centered", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.RIGHT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font1);
		style.setDataFormat(df.getFormat("yyyy-mm-dd"));
		styles.put("cell_b_date", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.RIGHT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font1);
		style.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.index);
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		style.setDataFormat(df.getFormat("yyyy-mm-dd"));
		styles.put("cell_g", style);

		Font font2 = this.createFont(wb);
		font2.setColor(IndexedColors.BLUE.index);
		font2.setBold(true);
		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font2);
		styles.put("cell_bb", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.RIGHT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font1);
		style.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.index);
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		style.setDataFormat(df.getFormat("yyyy-mm-dd"));
		styles.put("cell_bg", style);

		Font font3 = this.createFont(wb);
		font3.setFontHeightInPoints((short) 14);
		font3.setColor(IndexedColors.DARK_BLUE.index);
		font3.setBold(true);
		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(font3);
		style.setWrapText(true);
		styles.put("cell_h", style);

		Font defaultFont = this.createFont(wb);
		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setWrapText(true);
		style.setFont(defaultFont);
		styles.put("cell_normal", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setWrapText(true);
		style.setFont(defaultFont);
		styles.put("cell_normal_centered", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setWrapText(true);
		style.setFont(defaultFont);
		style.setDataFormat(df.getFormat("yyyy-mm-dd"));
		styles.put("cell_normal_date", style);

		style = createBorderedStyle(wb);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setIndention((short) 1);
		style.setWrapText(true);
		style.setFont(defaultFont);
		styles.put("cell_indented", style);

		style = createBorderedStyle(wb);
		// style.setWrapText(true);
		style.setAlignment(HorizontalAlignment.LEFT);
		style.setVerticalAlignment(VerticalAlignment.CENTER);
		style.setFont(defaultFont);
		styles.put("cell_middle", style);
	}

	/**
	 * 테두리 적용된 스타일 생성
	 *
	 * @param wb
	 * @return
	 */
	private CellStyle createBorderedStyle(SXSSFWorkbook wb) {
		CellStyle style = wb.createCellStyle();
		style.setBorderRight(BorderStyle.THIN);
		style.setRightBorderColor(IndexedColors.BLACK.index);
		style.setBorderBottom(BorderStyle.THIN);
		style.setBottomBorderColor(IndexedColors.BLACK.index);
		style.setBorderLeft(BorderStyle.THIN);
		style.setLeftBorderColor(IndexedColors.BLACK.index);
		style.setBorderTop(BorderStyle.THIN);
		style.setTopBorderColor(IndexedColors.BLACK.index);
		return style;
	}
}
