To create a directory (or folder) called 'new_dir' type the following command:


$ mkdir new_dir
To navigate into the folder you just created:


$ cd new_dir
To create a file called 'new_file':


$ touch new_file.rb
To delete the file you just created:


$ rm new_file.rb
To navigate out of the current folder to the one above:


$ cd ..
To delete the directory you just created:


$ rmdir new_dir
Now, create the directory and file like you did above, again.

To remove the directory and file at the same time, navigate to the directory above 'new_dir' and type the following command:


$ rm -R new_dir
Be very careful with the rm command. It's very destructive and there's no way to recover from it. Use with caution. If in doubt, use your file navigation program (e.g. Explorer or Finder) and delete files and folders that way.

---
When you have created a Ruby file, denoted by the .rb extension, you can run the code in that file by typing the ruby command followed by the file name in the command line. The following line shows how to run the code from a file called example.rb.


$ ruby example.rb
Pretty simple, eh?

Assuming that the example.rb file contained only the line puts 'hello world!', the following would print after running the file.


$ ruby example.rb
hello world!
$
When you run a Ruby file from the command line, the code gets executed by what's called an interpreter. You don't need to know a whole lot about the interpreter except the fact that it takes Ruby code and turns it into code that your computer understands.

The last tip is how to stop a running program. Sometimes, you'll have a long running Ruby program, or an error in the logic that results in an infinite loop. To exit out of the program execution loop, use control-c. This will send an abort signal to the running program.
