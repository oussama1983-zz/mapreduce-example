import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class AccidentsMapper extends Mapper<LongWritable, Text, Text, IntWritable>{

    @Override
    protected void map(final LongWritable key, final Text value, final Context context) throws IOException, InterruptedException {
        if (key.get() != 0) {
            String[] csv = value.toString().split(",");

            IntWritable numberOfCasualties = new IntWritable(Integer.parseInt(csv[8]));
            Text yearMonth = toYearMonth(csv[9]);

            context.write(yearMonth, numberOfCasualties);
        }
    }

    private Text toYearMonth(final String date) {
        return new Text(date.substring(3));
    }
}
