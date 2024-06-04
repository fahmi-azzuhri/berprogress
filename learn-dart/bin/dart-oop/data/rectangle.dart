class Rectangle {
  int _width = 0;
  int _height = 0;

  int get width => _width;
  set width(int value) {
    if (value >= 5) {
      //validasi data harus lebih atau sama dengan 5, dibawah ini maka yg tercetak adalah nilai yang ada di field
      _width = value;
    }
  }

  int get height => _height;
  set height(int value) {
    if (value >= 5) {
      _height = value;
    }
  }

//tidak direkomendasikan kalo hanya mengubah field
  // int get width => _width;
  // set width(int value) => _width =
  //     value; //type parameter harus sama dengan type yg ada didalam field
  // int get height => _height;
  // set height(int value) => _height = value;

//noob
  // int get width {
  //   return _width;
  // }

  // set width(int value) {
  //   _width = value;
  // }

  // int get height {
  //   return _height;
  // }

  // set height(int value) {
  //   _height = value;
  // }
}
