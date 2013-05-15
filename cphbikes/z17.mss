[zoom=17] {


#z15plus-roads[kind='highway'],
#z15plus-roads[kind='highway'][is_bridge='yes'],
#z15plus-roads[kind='highway'][is_link='yes'],
#z15plus-roads[kind='highway'][is_link='yes'][is_bridge='yes'] {
  ::road_outline{ line-width:26; line-color:@color_road_outline; line-opacity: 1.0; }
  ::road_inline{ line-width:13; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='major_road'],
#z15plus-roads[kind='major_road'][is_link='yes'],
#z15plus-roads[kind='major_road'][is_bridge='yes'],
#z15plus-roads[kind='major_road'][is_link='yes'][is_bridge='yes'] {
	::road_outline{ line-width:22; line-color:@color_road_outline; line-opacity: 1.0; }
	::road_inline{ line-width:11; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='minor_road'],
#z15plus-roads[kind='minor_road'][is_bridge='yes'] {
  	::road_outline{ line-width:13; line-color:@color_road_outline; line-opacity: 1.0; }
  	::road_inline{ line-width:7; line-color:@color_road_inline; line-opacity: 1.0; }
  }

#z15plus-roads[kind='rail'] {
  	::road_outline{ line-width:1.5; line-color:@color_road_inline;  }
  	::road_inline{ line-width:7.5; line-color:@color_road_inline; line-dasharray: 1, 5.5;  }
  }
  
#copenhagen_line[highway='path'] {
  	::road_inline{ line-width:2; line-color:@color_road_inline; line-dasharray: 6, 4; }
  }


/* BIKE ROUTES */  

#copenhagen_line_bike_routes[route='bicycle'][ncn='yes'] {
  	line-width:7; line-opacity:2; line-color:#fec509;
  }
  
#copenhagen_line_bike_routes[route='bicycle'][rcn='yes'] {
  	line-width:7; line-opacity:1; line-color:#fb9e24;
  }

#copenhagen_line_bike_routes[route='bicycle'][lcn='yes'] {
  	line-width:7; line-opacity: 1.0; line-color:#48ae02;
  }
  

/* BIKE LANES */
  
#copenhagen_line[highway='cycleway'],
#copenhagen_line[bicycle='yes'],
#copenhagen_line[bicycle='designated'],
#copenhagen_line[bicycle='ok'],
#copenhagen_line[route='bicycle'] {
	::bike_outline {
		line-width:6; 
		line-color:#fff;
	}
  	::bike_inline {
		line-width:1;
		line-color:#b1b3b3;
	}
  }
  
/* AIRPORT */  
  
#copenhagen_line[aeroway='runway'] {
 	::inline{ line-width:50; line-color:#eaeded;  }
  }
  
#copenhagen_line[aeroway='taxiway'] {
 	::inline{ line-width:15; line-color:#eaeded;  }
  }
  
#copenhagen_line[route='ferry'] {
  	::bike_outline, ::bike_inline { line-width:0; } 	
  	::ferry_inline{ line-width:2.25; line-color:#00b0ec; line-dasharray: 6, 3; }
  }
  
.area[aeroway='aerodrome'] {
    polygon-fill: #ededed; polygon-opacity: 0.2;
  }
  
/* BUILDINGS */

.buildings[building='yes'] {
	  polygon-fill: #d2d3d3;
  }
  
/* POIs */ 

.node[shop='bicycle'] {
	point-file: url("images/bike_shop.png");
	/*
   	marker-width: 3;
  	marker-fill: #00c437;
  	marker-line-color: darken(#00c437, 10%);
  	*/
  }
  
.node[amenity='compressed_air'] {
    point-file: url("images/bike_pump.png");
  	
  	/*
  	marker-width: 25;
  	marker-fill: #007feb;
  	marker-line-color: darken(#0017a0, 10%);
	*/
  }
  
.node[highway='traffic_signals'] {
  	point-file: url("images/traffic_signals.png");
  	/*
  	marker-width: 3;
  	marker-fill: #000;
  	marker-line-color: darken(#000, 10%);
  	*/
  }
  
.node[railway='station'] {
  	point-file: url("images/metro_12px.png");
  	/*
  	marker-width: 15;
  	marker-fill: #ff00a8;
  	marker-line-color: darken(#ff00a8, 10%);
  	*/
  }
  
    
}

.bicycle_parking[zoom=17] {
  marker-width: 8;
  marker-fill: @bicycle_parking;
  marker-line-color: darken(@bicycle_parking, 10%);

  polygon-fill: @bicycle_parking;
}
