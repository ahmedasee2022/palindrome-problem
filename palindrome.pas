program palindrome;
function palindrome(word: string): boolean;
begin
if lenght(word) <=1 then
palindrome :=True // base case: single character string is palindrome
else if word[1]<> word[lenght(word)]then
palindrome :=False //first and last character don't match, not a polindrome
else
palindrome :=palindrome(copy(word, 2, lenght(word)-2)) //recur on the substring without first and last characters
end;
    
 var 
 word: string;
 begin
 write('enter a word: ');
 read (word)

if palindrome(word) then
  write('The word "', word, '" is a palindrome.')
  else
    write('The word "', word, '" is not a palindrome.');

  read;

end.
