    class Login {
      String _id;
      String _email;
      int _senha;


          Login(this._id, this._email, this._senha);

          String get id => _id;

          String get email => _email;

          int get senha => _senha;

          set senha(int value) {
            _senha = value;
          }

          set email(String value) {
            _email = value;
          }

          set id(String value) {
            _id = value;
          }

       }
