import 'dart:ffi';
import 'dart:math';

class calculateBrain {
  final height;
  final weight;
  calculateBrain(this.height, this.weight);
  late double _bmi;


  double calCulate (){
      _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }



  String getCondition(){
    if(_bmi>= 24.9){
      return 'Overweight';
    }
    else if( _bmi<= 18.5){
      return 'Underweight';

    }
    else{
      return 'Normal';
    }
  }




   String getSuggestion() {
    if (_bmi >= 24.9) {
      return 'You have a higher than normal body weight, Please Do exercise and avoid junk food';
    } else if (_bmi <= 18.5) {
      return 'You have a Lower than normal body weight, Eat a bit more';
    } else {
      return 'Great You have a normal body weight,Try to maintain this body weight';
    }

  }



  String getSuggestionImage(){
    if(_bmi>= 24.9){
      return 'asset/icon/exercise.png';
    }
    else if( _bmi<= 18.5){
      return 'asset/icon/eat.png';

    }
    else{
      return 'asset/icon/normal.png';
    }

  }




  String getConditionImage(){
    if(_bmi>= 24.9){
      return 'asset/icon/exercise.png';
    }
    else if( _bmi<= 18.5){
      return 'asset/icon/exercise.png';

    }
    else{
      return 'asset/icon/normal.png';
    }
  }





  

  }



