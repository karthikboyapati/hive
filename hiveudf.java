package hivetable;
import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

public class hiveudf extends UDF {
	public Text evaluate(final String S){
		if (S == null) { return null; }
		String[] units = S.split(":");
		int hours = Integer.parseInt(units[0]);
		int minutes = Integer.parseInt(units[1]);
		int seconds = Integer.parseInt(units[2]);
		int duration = (3600*hours)+(60*minutes)+seconds;
		String K=Integer.toString(duration);`enter code here`
		return new Text(K.toString());
    }
}
