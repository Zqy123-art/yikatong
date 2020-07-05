package tool;

import com.mysql.cj.jdbc.ConnectionImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@Controller
public class HiveConnect {

    @Autowired
    @Qualifier("hiveDruidDataSource")
    DataSource druidDataSource;



    public Statement getstatement() throws SQLException {
        //创建一个statement

        return  druidDataSource.getConnection().createStatement();

    }

}
