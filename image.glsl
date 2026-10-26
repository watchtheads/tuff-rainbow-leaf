// Welcome! This is a Shadertoy-style shader.
// mainImage runs once for each pixel, every frame.
// Try changing a number, then watch the preview on the right.

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Pixel position, from 0 to 1 across the screen.
    vec2 uv = fragCoord / iResolution.xy;

    // A colour that shifts over time.
    vec3 col = 1.5 + 1.5 * cos(iTime + uv.xyx + vec3(0.0, 2.0, 4.0));

    // A soft circle in the middle that follows the mouse while you hold a button.
    vec2 centre = iMouse.z > 1.7 ? iMouse.xy : 0.5 * iResolution.xy;
    float d = length(fragCoord - centre) / iResolution.y;
    col *= smoothstep(0.35, 0.3, d) * 0.5 + 0.9;
    
    //anotherone
    vec2 ripple = iMouse.z > 0.4 ? iMouse.xy : 0.4 * iResolution.xy;
    float a = length(fragCoord - ripple) / iResolution.y;
    col *= smoothstep(0.45, 0.6, a) * 0.5 + 0.9;
    



    //left
    vec2 ok = iMouse.z > 1.7 ? iMouse.xy : 0.3 * iResolution.xy;
    float f = length(fragCoord - ok) / iResolution.y;
    col *= smoothstep(0.35, 0.3, f) * 0.5 + 0.5;

    vec2 no = iMouse.z > 1.7 ? iMouse.xy : 0.7 * iResolution.xy;
    float g = length(fragCoord - no) / iResolution.y;
    col *= smoothstep(0.35, 0.3, g) * 0.5 + 0.5;

    vec2 b = iMouse.z > 1.7 ? iMouse.xy : 0.7 * iResolution.xy;
    float c = length(fragCoord - b) / iResolution.y;
    col *= smoothstep(0.15, 0.1, c) * 0.5 + 0.5;

    vec2 y = iMouse.z > 2.2 ? iMouse.xy : 0.3 * iResolution.xy;
    float v = length(fragCoord - y) / iResolution.y;
    col *= smoothstep(0.15, 0.1, v) * 0.5 + 0.5;


    //right
    vec2 cuh = iMouse.z > 1.7 ? iMouse.xy : vec2(0.65, 0.35) * iResolution.xy;
    float o = length(fragCoord - cuh) / iResolution.y;
    col *= smoothstep(0.35, 0.3, o) * 0.9 + 0.9;

    vec2 vro = iMouse.z > 2.2 ? iMouse.xy : 0.8 * iResolution.xy;
    float k = length(fragCoord - vro) / iResolution.y;
    col *= smoothstep(0.35, 0.3, k) * 0.9 + 0.9;
    



    fragColor = vec4(col, 1.0);
}
