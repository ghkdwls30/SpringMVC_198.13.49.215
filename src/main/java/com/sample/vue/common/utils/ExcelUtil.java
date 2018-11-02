package com.sample.vue.common.utils;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;

import net.sf.jxls.exception.ParsePropertyException;
import net.sf.jxls.transformer.XLSTransformer;

public class ExcelUtil {

	public void download(HttpServletRequest request, HttpServletResponse response, Map<String , Object> beans, String filename, String templateFile) throws org.apache.poi.openxml4j.exceptions.InvalidFormatException {
        String tempPath = request.getSession().getServletContext().getRealPath("/WEB-INF/template") ;
        
        try {
        	
        	 // 파일명 변환  

        	String fileName = URLEncoder.encode(filename,"UTF-8"); // UTF-8로 인코딩
        	fileName = fileName.replace("+", " ");
        	
            InputStream is = new BufferedInputStream(new FileInputStream(tempPath + "\\" + templateFile));
            XLSTransformer transformer = new XLSTransformer();
            Workbook resultWorkbook = transformer.transformXLS(is, beans);
            response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + ".xlsx\"");
            OutputStream os = response.getOutputStream();
            resultWorkbook.write(os);
            
        } catch (ParsePropertyException | IOException ex) {
            ex.printStackTrace();
        }
}

	
}
