<h2>Please Enter Note Here</h2>
      <form action="./notedb.php" 
            method="post"
            onsubmit="return validatePost(this)">
        <p>
          <label for="sub">Subject:</label>
          <br/>
          <input type="text" 
                 name="subject" 
                 id="sub" 
                 size="60" 
                 maxlength="64"
             required/>
        </p>
        <p>
          <label for="body">Body</label>
          <br/>
          <textarea cols="60" 
                    rows="12" 
                    name="body" 
                    id="body"
                    required></textarea>
        </p>
        <p>
          <input type="hidden" name="insert" value="yes"/>
          <input type="submit" value="submit Note" id="submit"/>
        </p>
      </form>