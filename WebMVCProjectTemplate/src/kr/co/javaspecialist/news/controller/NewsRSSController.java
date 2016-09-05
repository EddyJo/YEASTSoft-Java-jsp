package kr.co.javaspecialist.news.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.news.model.NewsItemVO;

public class NewsRSSController implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		//언론사의 주소를 파라미터로 받는다.
		String rssurl = request.getParameter("rssurl");
		//기사를 저장할 변수 선언
		ArrayList<NewsItemVO> newsList = new ArrayList<>();
		
		try {
			//DocumentBuilderFactory는 싱클톤으로 만들어서 하나의 객체를 공유
			//도큐먼트빌더팩토리 생성
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			//도큐먼트빌더 생성
			DocumentBuilder builder = factory.newDocumentBuilder();
			//parse메서드로 도큐먼트 객체 생성(xml문서 파싱) doc는 DOM객체
			//DOM객체에서는 노드를 마음대로 꺼내올 수 있다.
			Document doc = builder.parse(rssurl);
			
			NodeList list = doc.getElementsByTagName("item");
			for(int i=0; i<list.getLength(); i++) {
				Node node = list.item(i);
				NewsItemVO newsItem = new NewsItemVO();
				for(Node childNode = node.getFirstChild(); childNode!=null; childNode=childNode.getNextSibling()) {
					if(childNode.getNodeName().equals("no")) {
						newsItem.setNo(Integer.parseInt(childNode.getTextContent()));
					}else if(childNode.getNodeName().equals("title")) {
						newsItem.setTitle(childNode.getTextContent());
					}else if(childNode.getNodeName().equals("link")) {
						newsItem.setLink(childNode.getTextContent());
					}else if(childNode.getNodeName().equals("category")) {
						newsItem.setCategory(childNode.getTextContent());
					}else if(childNode.getNodeName().equals("author")) {
						newsItem.setAuthor(childNode.getTextContent());
					}else if(childNode.getNodeName().equals("pubDate")) {
						newsItem.setPubDate(childNode.getTextContent());
					}else if(childNode.getNodeName().equals("description")) {
						newsItem.setDescription(childNode.getTextContent());
					} 
				}
				newsList.add(newsItem);
				request.setAttribute("newsList", newsList);
			}
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
		return "/news/news_rss.jsp";
	}

}
