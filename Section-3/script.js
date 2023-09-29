let number = prompt("Enter a number please: ");//let the user to enter a number
var isPrime = true;//declaring a boolean variable to test the number if it is prime or not
var prime = "";//declaring an empty string that will contains the prime numbers
if(number >= 2)//because the 2 is a prime number and it may be divisible in the loop we make sure to add it outside the loop when the entered number by the user is greater than 2
prime += " 2 "
for(let i = 2 ; i <= number ; i++){//creating first loop to loop from 2 till the users input
    isPrime = true;//reassign true to the boolean value becuase in the second loop when the number is not a prime the boolean will become false
    for(let j = 2 ; j < i ; j++){//second loop to determine the prime numbers
        if(i % j === 0){
            isPrime = false;//here when the number is not prime we assign the boolean to false
        }
        if(isPrime){//when the value of the boolean is true the number will be added to the string if not we will not enter the loop and reassign the value to true and check the new number
        prime += `${i} `;
        break;//break to avoid duplicate prinitng of numbers
    }
    }
}
alert(prime)//displaying the result
