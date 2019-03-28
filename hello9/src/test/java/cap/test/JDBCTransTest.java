package cap.test;

import cap.trans.JDBCTrans;
import org.junit.Test;

public class JDBCTransTest {

    @Test
    public void testTrans(){
        JDBCTrans jdbcTrans=new JDBCTrans();
        jdbcTrans.trans();
    }
    @Test
    public void testSayHi(){
        System.out.println("hello world");
    }
}
