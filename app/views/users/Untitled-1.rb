# <h2>Posts</h2>
# <% @user.posts.each do |post| %>
 
#   <table>
#   <tr>
#     <th>Post:</th>
#     <%= post.post_text %>
#     </tr>
#     </table>
    
#   <p>
#   <%= link_to 'Destroy Post', [post.user, post],
#                method: :delete,
#                data: { confirm: 'Are you sure?' } %>
# </p>
# <p>
# <%= link_to 'Show Posts', user_path(post) %>
# </p>
# <% end %>