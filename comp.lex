%{
%}
DIGITO               [0-9]
PALAVRA              [a-zA-Z]
%%
{DIGITO}   printf("Voce escrever um digito: \"%s\"\n", yytext);
{PALAVRA} printf("Voce escreveu uma palavra: \"%s\"\n", yytext);
.	   printf("Nao reconheceu: \"%s\"\n", yytext);
%%
int main(int argc, char *argv[])
{
  if(argc < 2)
  {
    printf("Missing input file\n");
    exit(-1);
  }
  yyin = fopen(argv[1], "r");
  yylex();
}