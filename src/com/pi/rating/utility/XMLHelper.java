package com.pi.rating.utility;

import java.io.InputStream;
import java.io.StringWriter;
import java.io.Writer;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import net.sf.saxon.TransformerFactoryImpl;

public class XMLHelper {

	public static void main(String[] args) throws Exception {
		
		System.out.println(getSaxonLoading());
		
	}
	
	
	public static String getSaxonLoading() throws Exception {
		
		Writer out = new StringWriter();
		TransformerFactory factory = new TransformerFactoryImpl();
		
		//InputStream inputXslStream = XMLHelper.class.getClassLoader().getResourceAsStream("/resource/input.xsl");
		//InputStream inputXmlStream = XMLHelper.class.getClassLoader().getResourceAsStream("/resource/input.xml");  

		InputStream inputXslStream = XMLHelper.class.getResourceAsStream("/resource/input.xsl");
		InputStream inputXmlStream = XMLHelper.class.getResourceAsStream("/resource/input.xml");
		
		System.out.println("vinod.." + inputXslStream);
		
		StreamSource xslStream = new StreamSource(inputXslStream);
		StreamSource xmlStream = new StreamSource(inputXmlStream);
		
		Transformer transformer = factory.newTransformer(xslStream);
		
		transformer.transform(xmlStream, new StreamResult(out));
		
		String finalHtml = out.toString();
		out.close();
		
		return finalHtml;
	}

	public static String getNormalTransformString() throws Exception {
		
		TransformerFactory tFactory = TransformerFactory.newInstance();
		Writer out = new StringWriter();
		
		
		
		Transformer transformer = tFactory.newTransformer(new StreamSource("input.xsl"));
		//transformer.transform(new javax.xml.transform.stream.StreamSource("input.xml"), new javax.xml.transform.stream.StreamResult(new FileOutputStream("howto.html")));
		transformer.transform(new StreamSource("input.xml"), new StreamResult(out));
		
		String finalHtml = out.toString();
		out.close();
		
		return finalHtml;
		
	}
}
