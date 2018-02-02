BEGIN{
    IGNORECASE=1
    print("--START--")
} 

/Rent/{print} /cine/;

END{
   print ("--END--")
}

