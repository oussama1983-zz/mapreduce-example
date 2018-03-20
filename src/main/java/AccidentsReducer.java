import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class AccidentsReducer extends Reducer<Text, IntWritable, Text, IntWritable> {

    @Override
    protected void reduce(final Text key, final Iterable<IntWritable> values,
                          final Context context) throws IOException, InterruptedException
    {
        int sumOfCasualties = 0;
        for (IntWritable value : values) {
            sumOfCasualties += value.get();
        }

        context.write(key, new IntWritable(sumOfCasualties));
    }
}
