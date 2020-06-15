package com.grooming.control;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //웹컨텐츠아래의 파일 경로를 찾을수 았는 어노테이션
public class DataSourceTest {														//자바소스 폴더에서 웹컨텐츠 폴더를 못봄 (반대도 마찬가지)
	@Inject
	private DataSource dataSource;
	
	@Test
	public void testConn() {
		try (Connection conn = dataSource.getConnection()){
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
