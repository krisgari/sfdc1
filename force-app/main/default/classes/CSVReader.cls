public class CSVReader {
  public boolean EOF {
    get
    {
      if( this.position < this.csvStringLength )
        return false;
      else
        return true;
    }
  }
       
  private string csvString;
  private integer csvStringLength;
  private integer position = 0;
  
  private static string COMMA = ',';
  private static string NL = '\n';
  private static string QUOTE = '"';
  private static string DOUBLE_QUOTE = '""';

  public CSVReader( string csvString )
  {
    this.csvString = csvString;
    this.csvStringLength = csvString.length();
  }
  
  private integer ReadToLine(integer position, List<string> values)
  {
    integer startPos = position;

    string currentValue;
    integer cAt, nlAt, foundAt;

    List<string> tmpValues = new List<string>();
    while (position < csvStringLength)
    {
      cAt = this.csvString.indexOf( COMMA, position );
      nlAt = this.csvString.indexOf( NL, position );
      foundAt = Math.min( cAt, nlAt );
      if( foundAt == -1 )
          foundAt = Math.max( cAt, nlAt );


      if (foundAt == -1)
      {
        currentValue = this.csvString.substring(startPos);
        position = this.csvStringLength;
      }
      else
      {
        currentValue = this.csvString.substring(startPos, foundAt );
        position = foundAt + 1;
      }


      if( !currentValue.startsWith( QUOTE ) )
      {
        tmpValues.add( currentValue );

        if( foundAt == nlAt )
          break;

        startPos = position;
      }
      else if( currentValue.endsWith( QUOTE ) && !currentValue.endsWith( DOUBLE_QUOTE ) )
      {
        if( currentValue.indexOf( DOUBLE_QUOTE ) == -1 )
          tmpValues.add( currentValue.substring( 1, currentValue.length() - 1 ) );
        else
          tmpValues.add( currentValue.substring( 1, currentValue.length() - 1 ).replace( DOUBLE_QUOTE, QUOTE ) );
          
        if( foundAt == nlAt )
          break;
        
        startPos = position;
      }
    }

    values.addAll( tmpValues );
    return position;
  }

  public List<string> ReadLine()
  {
    List<string> values = new List<string>();
    this.position = this.ReadToLine( this.position, values );
    return values;
  }

  public static List<List<string>> Parse( string csvString )
  {
    List<List<string>> linesValues = new List<List<string>>();

    CSVReader reader = new CSVReader(csvString);
    while (!reader.EOF)
    {
      List<string> actualValues = reader.ReadLine();
      linesValues.Add(actualValues);
    }

    return linesValues;
  }
}

/*
public class CSVReader {
  private String delim = ',';
  // the input data
  public String[] buffer;
  
  public CSVReader(String data){
    this.buffer = data.split('\n'); 
  }
  
  public CSVReader(String data, String delim){
    this.buffer = data.split('\n'); 
    this.delim = delim;
  }
  
    
  public String[] readLine(){
    if(buffer.size() == 0)
      return null;
    String line = this.buffer.remove(0);
    String[] parts = new String[] {};
    while(line != ''){
      Integer next = 0;
      if(line.startsWith('"')){
        line = line.substring(1); // strip initial
        Integer quoteIndex = findQuote(line, 0);
        while(quoteIndex == -1){
          if(buffer.size() == 0){
            // EOT!
            quoteIndex = line.length();
          } else { 
            // grab the next line
            Integer skip = line.length();
            line += '\n' + this.buffer.remove(0);
            quoteIndex = findQuote(line, skip);
          }
        }
        // advance to comma
        next = quoteIndex + 1;
        parts.add(line.substring(0, quoteIndex).replace('""', '"'));
      } else {
        next = line.indexOf(this.delim, next);
        if(next == -1)
          next = line.length();
        // NB in Substring, "endindex" is the index of the character AFTER the last index to get
        parts.add(line.substring(0, next));
      }    
      if(next == line.length() - 1)
        // case of a terminating comma.
        parts.add('');
      line = next < line.length() ? line.substring(next+1) : '';
    }
    if(parts.size() == 0)
      // empty string - we still want to return something...
      parts.add('');
    return parts;
  }
  
  static private Pattern quotePattern = Pattern.compile('(?<!")"(?!")');

    
  private Integer findQuote(String line, Integer skip){
    Matcher m = quotePattern.matcher(line);
    m.region(skip, m.regionEnd());
    if(!m.find())
      return -1;
    return m.start();
  }
}*/