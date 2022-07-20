import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_clock/components/world_time.dart';

class WorldScreen extends StatelessWidget {
  const WorldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Worldwide Time",
          style: GoogleFonts.poppins(
            color: Theme.of(context).iconTheme.color,
            fontSize: 18,
          ),
        ),
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              WorldTime(
                  region: 'Australia',
                  city: 'Adelaide',
                  svgIcon: 'assets/icons/aus.svg',
                  dCity: 'Adelaide, AUS'),
              WorldTime(
                  region: 'Africa',
                  city: 'Algiers',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Algiers, DZA'),
              WorldTime(
                  region: 'Europe',
                  city: 'Amsterdam',
                  svgIcon: 'assets/icons/amsterdam.svg',
                  dCity: 'Amsterdam, NLD'),
              WorldTime(
                  region: 'Europe',
                  city: 'Istanbul',
                  svgIcon: 'assets/icons/mosque.svg',
                  dCity: 'Ankara, TUR'),
              WorldTime(
                  region: 'America',
                  city: 'Asuncion',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Asunción, PRY'),
              WorldTime(
                  region: 'Europe',
                  city: 'Athens',
                  svgIcon: 'assets/icons/athens.svg',
                  dCity: 'Athens, GRC'),
              WorldTime(
                  region: 'Pacific',
                  city: 'Auckland',
                  svgIcon: 'assets/icons/nz.svg',
                  dCity: 'Auckland, NZ'),
              WorldTime(
                  region: 'Asia',
                  city: 'Bangkok',
                  svgIcon: 'assets/icons/thailand.svg',
                  dCity: 'Bangkok, TH'),
              WorldTime(
                  region: 'Europe',
                  city: 'Madrid',
                  svgIcon: 'assets/icons/barca.svg',
                  dCity: 'Barcelona, ESP'),
              WorldTime(
                  region: 'Asia',
                  city: 'Shanghai',
                  svgIcon: 'assets/icons/beijing.svg',
                  dCity: 'Beijing, CHN'),
              WorldTime(
                  region: 'Europe',
                  city: 'London',
                  svgIcon: 'assets/icons/ireland.svg',
                  dCity: 'Belfast, IRL'),
              WorldTime(
                  region: 'Europe',
                  city: 'Belgrade',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Belgrade, SRB'),
              WorldTime(
                  region: 'Europe',
                  city: 'Berlin',
                  svgIcon: 'assets/icons/bavaria.svg',
                  dCity: 'Berlin, DEU'),
              WorldTime(
                  region: 'Europe',
                  city: 'London',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Birmingham, GBR'),
              WorldTime(
                  region: 'America',
                  city: 'Bogota',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Bogotá, COL'),
              WorldTime(
                  region: 'Europe',
                  city: 'Brussels',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Brussels, BEL'),
              WorldTime(
                  region: 'Europe',
                  city: 'Bucharest',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Bucharest, ROU'),
              WorldTime(
                  region: 'Europe',
                  city: 'Budapest',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Budapest, HUN'),
              WorldTime(
                  region: 'Africa',
                  city: 'Cairo',
                  svgIcon: 'assets/icons/pyramid.svg',
                  dCity: 'Cairo, EGY'),
              WorldTime(
                  region: 'Africa',
                  city: 'Johannesburg',
                  svgIcon: 'assets/icons/capetown.svg',
                  dCity: 'Cape Town, ZAF'),
              WorldTime(
                  region: 'America',
                  city: 'Caracas',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Caracas, VEN'),
              WorldTime(
                  region: 'America',
                  city: 'Cayenne',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Cayenne, GUF'),
              WorldTime(
                  region: 'Europe',
                  city: 'Copenhagen',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Copenhagen, DNK'),
              WorldTime(
                  region: 'Africa',
                  city: 'Abidjan',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Dakar, SEN'),
              WorldTime(
                  region: 'Africa',
                  city: 'Nairobi',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Djibouti, DJI'),
              WorldTime(
                  region: 'Europe',
                  city: 'Dublin',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Dublin, IRL'),
              WorldTime(
                  region: 'Asia',
                  city: 'Hong_Kong',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Hong Kong, HKG'),
              WorldTime(
                  region: 'Asia',
                  city: 'Jakarta',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Jakarta, IDN'),
              WorldTime(
                  region: 'Africa',
                  city: 'Johannesburg',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Johannesburg'),
              WorldTime(
                  region: 'Asia',
                  city: 'Karachi',
                  svgIcon: 'assets/icons/mosque.svg',
                  dCity: 'Karachi, PAK'),
              WorldTime(
                  region: 'America',
                  city: 'Jamaica',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Kingston, JAM'),
              WorldTime(
                  region: 'Asia',
                  city: 'Kolkata',
                  svgIcon: 'assets/icons/india.svg',
                  dCity: 'Kolkata, IND'),
              WorldTime(
                  region: 'Asia',
                  city: 'Kuala_Lumpur',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Kuala Lumpur, MYS'),
              WorldTime(
                  region: 'Europe',
                  city: 'London',
                  svgIcon: 'assets/icons/london.svg',
                  dCity: 'London, GBR'),
              WorldTime(
                  region: 'Asia',
                  city: 'Manila',
                  svgIcon: 'assets/icons/philippines.svg',
                  dCity: 'Manila, PHL'),
              WorldTime(
                  region: 'America',
                  city: 'Mexico_City',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Mexico City, MEX'),
              WorldTime(
                  region: 'Europe',
                  city: 'Moscow',
                  svgIcon: 'assets/icons/moscow.svg',
                  dCity: 'Moscow, RUS'),
              WorldTime(
                  region: 'Asia',
                  city: 'Kolkata',
                  svgIcon: 'assets/icons/india.svg',
                  dCity: 'Mumbai, IND'),
              WorldTime(
                  region: 'Asia',
                  city: 'Kolkata',
                  svgIcon: 'assets/icons/india.svg',
                  dCity: 'New Delhi, IND'),
              WorldTime(
                  region: 'Asia',
                  city: 'Tokyo',
                  svgIcon: 'assets/icons/japan.svg',
                  dCity: 'Osaka, JPN'),
              WorldTime(
                  region: 'Europe',
                  city: 'Paris',
                  svgIcon: 'assets/icons/paris.svg',
                  dCity: 'Paris, FRA'),
              WorldTime(
                  region: 'Australia',
                  city: 'Perth',
                  svgIcon: 'assets/icons/aus.svg',
                  dCity: 'Perth, AUS'),
              WorldTime(
                  region: 'Europe',
                  city: 'Prague',
                  svgIcon: 'assets/icons/prague.svg',
                  dCity: 'Prague, CZE'),
              WorldTime(
                  region: 'Asia',
                  city: 'Rangoon',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Rangoon, MMR'),
              WorldTime(
                  region: 'Europe',
                  city: 'Rome',
                  svgIcon: 'assets/icons/rome.svg',
                  dCity: 'Rome, ITA'),
              WorldTime(
                  region: 'Asia',
                  city: 'Shanghai',
                  svgIcon: 'assets/icons/beijing.svg',
                  dCity: 'Shanghai, CHN'),
              WorldTime(
                  region: 'Asia',
                  city: 'Singapore',
                  svgIcon: 'assets/icons/singapore.svg',
                  dCity: 'Singapore, SGP'),
              WorldTime(
                  region: 'Australia',
                  city: 'Sydney',
                  svgIcon: 'assets/icons/sydney.svg',
                  dCity: 'Sydney, AUS'),
              WorldTime(
                  region: 'Asia',
                  city: 'Tehran',
                  svgIcon: 'assets/icons/mosque.svg',
                  dCity: 'Tehran, IRN'),
              WorldTime(
                  region: 'Asia',
                  city: 'Tokyo',
                  svgIcon: 'assets/icons/japan.svg',
                  dCity: 'Tokyo, JPN'),
              WorldTime(
                  region: 'Europe',
                  city: 'Rome',
                  svgIcon: 'assets/icons/venice.svg',
                  dCity: 'Venice, ITA'),
              WorldTime(
                  region: 'Europe',
                  city: 'Warsaw',
                  svgIcon: 'assets/icons/city.svg',
                  dCity: 'Warsaw, POL'),
              WorldTime(
                  region: 'Pacific',
                  city: 'Auckland',
                  svgIcon: 'assets/icons/nz.svg',
                  dCity: 'Wellington, NZL'),
            ],
          ),
        ),
      ),
    );
  }
}
