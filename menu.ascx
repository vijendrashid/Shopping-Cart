<%@ Control Language="C#"
  AutoEventWireup="true"
  CodeFile="menu.ascx.cs"
  Inherits="menu" %>

<div class="stretchHolder">
  <div class="stretchMenu">
    <ul class="stretchDrop">
      <li class="slide
             p1"><a href="categorywise.aspx?category=Touch Screen">
               TouchScreen</a>
      </li>
      <li class="slide
               p2"><a id="A1" runat="server"
                 href="categorywise.aspx?category=Tab">
                 Tab</a>
      </li>
      <li class="slide p3">
        <a id="A2" runat="server"
          href="categorywise.aspx?category=Qwerty">
          Qwerty</a>
      </li>
      <li class="slide
               p4"><a id="A3" runat="server"
                 href="categorywise.aspx?category=Dual Sim">
                 Dual Sim</a>
      </li>
      <li class="last p5">
        <a id="A4" runat="server"
          href="~/categorywise.aspx?category=Accessories">
          Accessories</a>
      </li>
    </ul>
  </div>
</div>
