/* Cartoon Shader - Vertex Shader */

#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec3 color;

out vec3 Normal;
out vec3 FragPos;
out vec2 TexCoords;
out vec3 Color;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{	
    gl_Position = projection * view * vec4(position, 1.0f); 
    TexCoords = texCoords;
}
