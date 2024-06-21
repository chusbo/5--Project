import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;

public class DatabaseConnector {
    public static Connection connect() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/database_name";
            String user = "username";
            String password = "password";
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}

public class QueryExecutor {
    public static void executeQuery(Connection connection) {
        String query = "SELECT t1.field1, t2.field2 " +
                       "FROM table1 t1 " +
                       "JOIN table2 t2 ON t1.common_field = t2.common_field";
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                String field1 = rs.getString("field1");
                String field2 = rs.getString("field2");
                System.out.println("Field1: " + field1 + ", Field2: " + field2);
                XMLWriter.writeResult(field1, field2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

public class XMLWriter {
    public static void writeResult(String field1, String field2) {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.newDocument();
            
            Element rootElement = doc.createElement("Results");
            doc.appendChild(rootElement);
            
            Element resultElement = doc.createElement("Result");
            rootElement.appendChild(resultElement);
            
            Element field1Element = doc.createElement("Field1");
            field1Element.appendChild(doc.createTextNode(field1));
            resultElement.appendChild(field1Element);
            
            Element field2Element = doc.createElement("Field2");
            field2Element.appendChild(doc.createTextNode(field2));
            resultElement.appendChild(field2Element);
            
            File file = new File("output.xml");
            javax.xml.transform.TransformerFactory transformerFactory = javax.xml.transform.TransformerFactory.newInstance();
            javax.xml.transform.Transformer transformer = transformerFactory.newTransformer();
            javax.xml.transform.dom.DOMSource source = new javax.xml.transform.dom.DOMSource(doc);
            javax.xml.transform.stream.StreamResult result = new javax.xml.transform.stream.StreamResult(file);
            transformer.transform(source, result);
            
            System.out.println("XML 파일이 생성되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Connection connection = DatabaseConnector.connect();
        if (connection != null) {
            QueryExecutor.executeQuery(connection);
        }
    }
}
