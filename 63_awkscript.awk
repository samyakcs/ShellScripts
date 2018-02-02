BEGIN{
    IGNORECASE=1
    FS=","
    print("--START--")
} 
{
print $1

}
END{
   print ("--END--")
}

/Rent/{print} /cine/;

