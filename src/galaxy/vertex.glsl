uniform float uSize;
uniform float uTime;
attribute float aScale;

varying vec3 vcolor;
varying vec3 aRandomness;

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    //spinner
    float angle = atan(modelPosition.x, modelPosition.z);
    float distanceToCenter = length(modelPosition.xz);
    float angleOffset = (1.0/distanceToCenter) *uTime *0.2;


    angle+=angleOffset ;
    modelPosition.x=cos(angle)*distanceToCenter;
    modelPosition.z=sin(angle)*distanceToCenter;

    //randomness



 

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectedPosition = projectionMatrix * viewPosition;
    gl_Position = projectedPosition;
    
    gl_PointSize = uSize * aScale;
    gl_PointSize *= ( 1.0 / - viewPosition.z );


    //color
    vcolor = color;

}