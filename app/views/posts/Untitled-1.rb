<h2>Add Comment:</h2>
<%= form_with(model: [@Post, @post.comments.build ], local: true) do |form| %>
  <p>
    <%= form.label :Comment %><br>
    <%= form.text_area :comment_text %>
  </p>
  <p>
    <%= form.submit %>
  </p>
<% end %>
 
<%= link_to 'Back', users_path %>