public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = noSpaces(word);
  s = isLetters(s);
  s = noCapitals(s);

if(s.equals(reverse(s)))
{
  return true;
}
return false;

}


////////////////////////////////////////////////////// F U N C T I O N S /////////////////////////////////////////

public String noSpaces(String wrd)
{
  String nNew = new String();
  for(int i = 0; i< wrd.length(); i++)
  {
    if(wrd.substring(i, i+1).equals(" "))
    {
      nNew = nNew;
    }
    else
    {
      nNew = nNew + wrd.substring(i,i+1);
    }
  }
  return nNew;
}

public String isLetters(String wWord)
{
  String lett = new String();
  for(int i = 0; i<wWord.length(); i++)
  {
    if(Character.isLetter(wWord.charAt(i)) == true)
    {
      lett = lett + wWord.substring(i,i+1);
    }
  }
  return lett;
}

public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}

public String reverse(String str)
{
  String sNew = new String();
  int lastInt = str.length() -1;
  for(int i = lastInt; i>=0; i--)
  {
    sNew = sNew + str.substring(i,i+1);
  }
  return sNew;
}