

String validateEmail(String text){
  if(text.isEmpty){
    return 'Can\'t be Empty';
  } else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(text)){
    return 'Kindly enter valid email';
  }else{
    return '';
  }
}

String validatePassword(String text){
  if(text.isEmpty){
    return 'Can\'t be Empty';
  } else if(text.length < 6){
    return 'Password should be greater than 6 digit';
  }else{
    return '';
  }
}