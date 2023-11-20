function palindrome(word: string): boolean;
var
  i, j: integer;
begin
  i := 1; // index for the first character
  j := length(word); // index for the last character

  while i < j do
  begin
    if word[i] <> word[j] then
    begin
      palindrome := False; // characters don't match, not a palindrome
    end;
    i := i + 1; // increment the first index
    j := j - 1; // decrement the last index
  end;
  palindrome := True; // all characters matched, it is a palindrome
end;

var
  word: string;
begin
  write('Enter a word: ');
  read(word); // Added 'ln' to read the newline character

  if palindrome(word) then
    write('The word "', word, '" is a palindrome.')
  else
    write('The word "', word, '" is not a palindrome.');

  read; // Added 'ln' to read the newline character
end.
