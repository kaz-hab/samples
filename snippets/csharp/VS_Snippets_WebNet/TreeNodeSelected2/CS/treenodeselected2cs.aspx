<!-- <Snippet1> -->

<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  void Button_Command(Object sender, CommandEventArgs e)
  {

    // Iterate through the child nodes of the root node and find
    // the nodes for Chapter One and Chapter Two.
    foreach(TreeNode node in LinksTreeView.Nodes[0].ChildNodes)
    {

      // Select the appropriate node based on which button was clicked.
      switch(node.Text)
      {

        case "Chapter One":
          // If the button clicked was "Chapter One", select the node 
          // using the Selected property.
          if (e.CommandName == "Chapter One")
          {
            // Select the node using the Selected property.
            node.Selected = true;
          }
          break;

        case "Chapter Two":
          // If the button clicked was "Chapter Two", select the node 
          // using the Select method.
          if (e.CommandName == "Chapter Two")
          {
            // Select the node using the Select method.
            node.Select();
          }
          break;

        default:
          // Do nothing.
          break;

      }

    }

  }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>TreeNode Selected and Select() Example</title>
</head>
<body>
    <form id="form1" runat="server">
    
      <h3>TreeNode Selected and Select() Example</h3>
    
      <asp:TreeView id="LinksTreeView"
        Font-Names= "Arial"
        ForeColor="Blue"
        SelectedNodeStyle-BackColor="Yellow" 
        ExpandDepth="2"
        runat="server">
         
        <LevelStyles>
        
          <asp:TreeNodeStyle ChildNodesPadding="10" 
            Font-Bold="true" 
            Font-Size="12pt" 
            ForeColor="DarkGreen"/>
          <asp:TreeNodeStyle ChildNodesPadding="5" 
            Font-Bold="true" 
            Font-Size="10pt"/>
          <asp:TreeNodeStyle ChildNodesPadding="5" 
            Font-UnderLine="true" 
            Font-Size="10pt"/>
          <asp:TreeNodeStyle ChildNodesPadding="10" 
            Font-Size="8pt"/>
             
        </LevelStyles>
         
        <Nodes>
        
          <asp:TreeNode Text="Table of Contents">
             
            <asp:TreeNode Text="Chapter One"
              Selected="True">
            
              <asp:TreeNode Text="Section 1.0">
              
                <asp:TreeNode Text="Topic 1.0.1"/>
                <asp:TreeNode Text="Topic 1.0.2"/>
                <asp:TreeNode Text="Topic 1.0.3"/>
              
              </asp:TreeNode>
              
              <asp:TreeNode Text="Section 1.1">
              
                <asp:TreeNode Text="Topic 1.1.1"/>
                <asp:TreeNode Text="Topic 1.1.2"/>
                <asp:TreeNode Text="Topic 1.1.3"/>
                <asp:TreeNode Text="Topic 1.1.4"/>
              
              </asp:TreeNode>
            
            </asp:TreeNode>
            
            <asp:TreeNode Text="Chapter Two">
            
              <asp:TreeNode Text="Section 2.0">
              
                <asp:TreeNode Text="Topic 2.0.1"/>
                <asp:TreeNode Text="Topic 2.0.2"/>
              
              </asp:TreeNode>
            
            </asp:TreeNode>
            
          </asp:TreeNode>
          
          <asp:TreeNode Text="Appendix A" />
          <asp:TreeNode Text="Appendix B" />
          <asp:TreeNode Text="Appendix C" />
        
        </Nodes>
        
      </asp:TreeView>
      
      <br /><br />
      
      <asp:Button id="SelectChapterOneButton"
        Text="Select Chapter One"
        CommandName="Chapter One" 
        OnCommand="Button_Command"
        runat="server"/>
        
      &nbsp;&nbsp;
        
      <asp:Button id="SelectChapterTwoButton"
        Text="Select Chapter Two"
        CommandName="Chapter Two" 
        OnCommand="Button_Command"
        runat="server"/>   

    </form>
  </body>
</html>

<!-- </Snippet1> -->
