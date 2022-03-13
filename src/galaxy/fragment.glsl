varying vec3 vcolor;


void main()
{
    //disc
    // float strength = distance(gl_PointCoord,vec2(0.5));
    // strength = step(0.5,strength);
    // strength = 1.0 - strength;


    // //diffuse
    // float strength = distance(gl_PointCoord,vec2(0.5));
    // strength *=2.0;
    // strength = 1.0 - strength;


    //light point pattern

    float strength = distance(gl_PointCoord,vec2(0.5));
    strength = 1.0 - strength;
    strength =pow(strength,20.0);

    //Finally
    vec3 color = mix(vec3(0.0),vcolor,strength);

    gl_FragColor= vec4(color,1.0);
}