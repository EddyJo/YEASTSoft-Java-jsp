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
		String rssurl = request.getParameter("rssurl");
		ArrayList<NewsItemVO> newsList = new ArrayList<>();
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
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
