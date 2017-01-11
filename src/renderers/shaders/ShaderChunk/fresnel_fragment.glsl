vec3 n = normalize( vNormal );
float rim = max( 0., abs( dot( n, normalize( -vPosition.xyz ) ) ) );
rim = 1.0-rim;
gl_FragColor.rgb += fresnelColor.rgb*pow(rim,fresnelPower)*fresnelIntensity;
