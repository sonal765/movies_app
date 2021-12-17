class Superhero {
  const Superhero({
    this.name,
    this.description,
    this.heroName,
    this.pathImage,
    this.movies,
    this.rawColor,
  });

  final String? name;
  final String? heroName;
  final String? description;
  final String? pathImage;
  final List<HeroMovie>? movies;
  final int? rawColor;

  static const marvelHeroes = [
    Superhero(
        heroName: 'Iron Man',
        name: 'Tony Stark',
        description:
            'He is the Armored Avenger - driven by a heart that is part machin'
            'e, but all hero! He is the '
            'INVINCIBLE IRON MAN! Iron Man\'s Powers and Abilities: Wears modu'
            'lar arc reactor-powered Iron Man armor, '
            'granting superhuman strength & durability, the ability to fly &'
            ' project Repulsor blasts',
        pathImage: 'assets/img/ironman.jpg',
        movies: HeroMovie.ironManMovies,
        rawColor: 0xffB3790F),
    Superhero(
        heroName: 'Thor',
        name: 'Thor Odinson',
        description:
            'Thor Odinson is the Asgardian God of Thunder, superhero, self-pro'
            'claimed protector of Earth and the king of '
            'Asgard. Thor made a name for himself as the mightiest warrior on '
            'his homeworld and subsequently became well '
            'known for his actions on Earth, which included acting as a found'
            'ing member of the Avengers.',
        pathImage: 'assets/img/thor.jpg',
        movies: HeroMovie.thorMovies,
        rawColor: 0xff3E4953),
    Superhero(
        heroName: 'Black Widow',
        name: 'Natasha Romanova',
        description:
            'The first and best-known Black Widow is a Russian agent trained'
            ' as a spy, martial artist, and sniper, '
            'and outfitted with an arsenal of high-tech weaponry, including a'
            ' pair of wrist-mounted energy weapons '
            'dubbed her "Widow\'s Bite". She wears no costume during her firs'
            't few appearances but simply evening wear and a veil.',
        pathImage: 'assets/img/blackwidow.png',
        movies: HeroMovie.blackWidowMovies,
        rawColor: 0xff0232CB),
    Superhero(
        heroName: 'Captain America',
        name: 'Steve Rogers',
        description:
            'Captain America is the alter ego of Steve Rogers, a frail young '
            'man enhanced to the peak of human perfection '
            'by an experimental serum to aid the United States government\'s'
            ' efforts in World War II. Near the end of the war, '
            'he was trapped in ice and survived in suspended animation until'
            ' he was revived in modern times.',
        pathImage: 'assets/img/captain.jpg',
        movies: HeroMovie.captainAmericaMovies,
        rawColor: 0xff123456),
    Superhero(
        heroName: 'Ant Man',
        name: 'Scott Lang',
        description:
            'Armed with the astonishing ability to shrink in scale but increas'
            'e in strength, con-man Scott Lang must embrace '
            'his inner-hero and help his mentor, Dr. Hank Pym, protect the se'
            'cret behind his spectacular Ant-Man suit '
            'from a new generation of towering threats.',
        pathImage: 'assets/img/antman.png',
        movies: HeroMovie.antmanMovies,
        rawColor: 0xff98142B),
    Superhero(
        heroName: 'Hawk eye',
        name: 'Clint Barton',
        description:
            'An expert marksman and fighter, Clint Barton puts his talents to '
            'good use by working for S.H.I.E.L.D.'
            ' as a special agent. The archer known as Hawkeye also boasts a '
            'strong moral compass that at times leads '
            'him astray from his direct orders',
        pathImage: 'assets/img/hawkeye.jpg',
        movies: [],
        rawColor: 0xff423445),
    Superhero(
        heroName: 'Hulk',
        name: 'Bruce Banner',
        description:
            'In his comic book appearances, the character is both the Hulk, a '
            'green-skinned, hulking and muscular '
            'humanoid possessing a vast degree of physical strength, and his '
            'alter ego Dr. Robert Bruce Banner, a '
            'physically weak, socially withdrawn, and emotionally reserved '
            'physicist',
        pathImage: 'assets/img/hulk.jpg',
        movies: HeroMovie.hulkMovies,
        rawColor: 0xff047A3B),
    Superhero(
        heroName: 'Spider Man',
        name: 'Peter Parker',
        description:
            'Spider-Man has spider-like abilities including superhuman streng'
            'th and the ability to cling to most surfaces. '
            'He is also extremely agile and has amazing reflexes. Spider-Man'
            ' also has a “spider sense,” that warns him of '
            'impending danger. Spider-Man has supplemented his powers with t'
            'echnology',
        pathImage: 'assets/img/spiderman.jpg',
        movies: HeroMovie.spidermanMovies,
        rawColor: 0xffA41209),
    Superhero(
        heroName: 'Doctor Strange',
        name: 'Benedict Cumberbatch',
        description: 'In an accident, Stephen Strange, a famous neurosurgeon,'
            ' loses the ability to use his hands. He goes to visit the mysterious'
            ' Ancient One to heal himself and becomes a great sorcerer under'
            ' her tutelage.',
        pathImage: 'assets/img/doctor.jpg',
        movies: HeroMovie.strangeMovies,
        rawColor: 0xff123456),
    Superhero(
        heroName: 'Captain Marvel',
        name: 'Brie Larson',
        description: 'Amidst a mission, Vers, a Kree warrior, gets separated'
            ' from her team and is stranded on Earth. However, her '
            'life takes an unusual turn after she teams up with Fury,'
            ' a S.H.I.E.L.D. agent.',
        pathImage: 'assets/img/marvel.jpg',
        movies: HeroMovie.marvelMovies,
        rawColor: 0xff98142B),
    Superhero(
        heroName: 'Black Panther',
        name: 'Chadwick Boseman',
        description:
            "After his father's death, T'Challa returns home to Wakanda to inherit his throne. However, a powerful enemy related to his family threatens to attack his nation.",
        pathImage: 'assets/img/panther.jpg',
        movies: HeroMovie.pantherMovies,
        rawColor: 0xff3E4953),
    Superhero(
        heroName: 'Last Page',
        name: 'SLIDE BACK',
        description: "Go back to know about Marvel Superhero.",
        pathImage: 'assets/img/goback.jpg',
        movies: [],
        rawColor: 0xff011535),
  ];
}

class HeroMovie {
  const HeroMovie(
    this.title,
    this.rate,
    this.urlImage,
  );

  final String title;
  final double rate;
  final String urlImage;

  static const antmanMovies = [
    HeroMovie('Ant-Man', 8.2,
        "https://upload.wikimedia.org/wikipedia/en/1/12/Ant-Man_%28film%29_poster.jpg"),
    HeroMovie('Ant-Man and the Wasp', 8.2,
        "https://upload.wikimedia.org/wikipedia/en/2/2c/Ant-Man_and_the_Wasp_poster.jpg")
  ];
  static const blackWidowMovies = [
    HeroMovie("Black Widow", 7,
        'https://upload.wikimedia.org/wikipedia/en/e/e9/Black_Widow_%282021_film%29_poster.jpg')
  ];

  static const captainAmericaMovies = [
    HeroMovie('Captain America: The First Avenger', 7.8,
        'https://upload.wikimedia.org/wikipedia/en/3/37/Captain_America_The_First_Avenger_poster.jpg'),
    HeroMovie('Captain America: The Winter Soldier', 9.3,
        'https://upload.wikimedia.org/wikipedia/en/9/9e/Captain_America_The_Winter_Soldier_poster.jpg'),
    HeroMovie('Captain America: Civil War', 8.7,
        'https://upload.wikimedia.org/wikipedia/en/5/53/Captain_America_Civil_War_poster.jpg'),
  ];

  static const hulkMovies = [
    HeroMovie('Hulk', 6.5,
        'https://upload.wikimedia.org/wikipedia/en/5/59/Hulk_movie.jpg'),
    HeroMovie('The Incredible Hulk', 7.5,
        'https://upload.wikimedia.org/wikipedia/en/f/f0/The_Incredible_Hulk_%28film%29_poster.jpg'),
  ];
  static const ironManMovies = [
    HeroMovie('Iron Man', 6,
        'https://upload.wikimedia.org/wikipedia/en/0/02/Iron_Man_%282008_film%29_poster.jpg'),
    HeroMovie('Iron Man 2', 8,
        'https://upload.wikimedia.org/wikipedia/en/e/ed/Iron_Man_2_poster.jpg'),
    HeroMovie('Iron Man 3', 5,
        'https://upload.wikimedia.org/wikipedia/en/1/19/Iron_Man_3_poster.jpg'),
  ];
  static const spidermanMovies = [
    HeroMovie('Spider-Man: Homecoming', 7.1,
        'https://upload.wikimedia.org/wikipedia/en/f/f9/Spider-Man_Homecoming_poster.jpg'),
    HeroMovie('Spider-Man: Far From Home', 7.8,
        'https://upload.wikimedia.org/wikipedia/en/b/bd/Spider-Man_Far_From_Home_poster.jpg'),
    HeroMovie('Spider-Man: No From Home', 7.5,
        'https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg'),
  ];
  static const thorMovies = [
    HeroMovie("Thor", 7.1,
        'https://upload.wikimedia.org/wikipedia/en/9/95/Thor_%28film%29_poster.jpg'),
    HeroMovie("Thor: The Dark World", 7,
        'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/f/fc/Thor-_The_Dark_World_poster.jpg/revision/latest?cb=20131115001851'),
  ];

  static const strangeMovies = [
    HeroMovie("Doctor Strange", 7.6,
        'https://upload.wikimedia.org/wikipedia/en/a/a1/Doctor_Strange_%282016_film%29_poster.jpg'),
  ];

  static const marvelMovies = [
    HeroMovie("Captain Marvel", 7.6,
        'https://upload.wikimedia.org/wikipedia/en/4/4e/Captain_Marvel_%28film%29_poster.jpg'),
  ];

  static const pantherMovies = [
    HeroMovie("Black Panther", 7.6,
        'https://upload.wikimedia.org/wikipedia/en/d/d6/Black_Panther_%28film%29_poster.jpg'),
  ];
}
