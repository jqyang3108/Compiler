import org.antlr.v4.runtime.*;

public class Micro {
	public static void main(String[] args) throws Exception
	{
		MicroLexer lexer= new MicroLexer(new ANTLRFileStream(args[0]));
                Token nt=lexer.nextToken();
                int tt= nt.getType();
                Vocabulary vv= lexer.getVocabulary();
                while (tt != Token.EOF)
                {
                   System.out.println("Token Type: "+vv.getDisplayName(tt));
                   System.out.println("Value: "+nt.getText());   
                   nt=lexer.nextToken();
                   tt=nt.getType();
                  
                }
		
			
	}
	
	
}
