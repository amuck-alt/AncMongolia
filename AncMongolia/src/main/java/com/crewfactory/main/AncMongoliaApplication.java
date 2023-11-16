package com.crewfactory.main;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@SpringBootApplication
public class AncMongoliaApplication {

	public static void main(String[] args) {
		SpringApplication.run(AncMongoliaApplication.class, args);
	}
	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) { 
		return application.sources(AncMongoliaApplication.class); 
	}
	
	@Bean
	SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{ 
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean(); 
		sessionFactory.setDataSource(dataSource); 
		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mapper/*.xml"); 
		sessionFactory.setMapperLocations(res); 
		return sessionFactory.getObject(); 
	}
	
	@Bean 
	SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) throws Exception { 
		final SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory); 
		return sqlSessionTemplate; 
	}

}
