BEGIN{
    IGNORECASE=1
    print("--START--")
} 

END{
   print ("--END--")
}

/Rent/{print} /cine/;

