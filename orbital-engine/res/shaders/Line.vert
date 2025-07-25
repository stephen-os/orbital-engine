#version 430 core

layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec4 a_Color;

out vec4 v_Color;

uniform mat4 u_ViewProjection;
uniform int u_WireframeMode;
uniform vec3 u_WireframeColor;

void main()
{
    gl_Position = u_ViewProjection * vec4(a_Position, 1.0);
    v_Color = (u_WireframeMode == 1) ? vec4(u_WireframeColor, 1.0f) : a_Color;
}
