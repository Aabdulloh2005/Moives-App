class PopularMovies {
  String image;
  PopularMovies(this.image);

  static List<PopularMovies> getMovies() {
    List<PopularMovies> moviesList = [];
    moviesList.add(
      PopularMovies("assets/images/img1.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img2.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img3.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img4.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img5.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img6.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img7.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img8.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img9.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img10.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img11.jpg"),
    );
    moviesList.add(
      PopularMovies("assets/images/img12.jpg"),
    );

    return moviesList;
  }
}
