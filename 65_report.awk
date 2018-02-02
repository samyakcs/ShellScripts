BEGIN {
    printf("      Salary Report\n");
    printf("EName\tSalary\n");
    printf("=====\t=======\n")
}
{ printf("%s\t%d\n",$2,$5)} 
END {
    printf("--END OF REPORT--\n")
}
