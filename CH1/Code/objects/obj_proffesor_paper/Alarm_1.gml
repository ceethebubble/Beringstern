questionsWrong = 0
global.flags[1] = 0;
part = 0;

numbers[part * 2] = round(random_range(2,8))
numbers[(part * 2) + 1] = round(random_range(0,3))
answers[part] = numbers[part * 2] * numbers[(part * 2) + 1]
if (round(random_range(1,10)) >= 7)
{
	questionsWrong += 1
	answerVar = answers[part] - random_range(6,30)
}
else
{
	answerVar = answers[part]
}
questions[part] = string(numbers[part * 2]) + " times  " + string(numbers[(part * 2) + 1]) + " = " + string(answerVar)

part = 1;

numbers[part * 2] = round(random_range(2,8))
numbers[(part * 2) + 1] = round(random_range(0,3))
answers[part] = numbers[part * 2] * numbers[(part * 2) + 1]
if (round(random_range(1,10)) == 10)
{
	answerVar = answers[part] - random_range(6,30)
	questionsWrong += 1
}
else
{
	answerVar = answers[part]
}
questions[part] = string(numbers[part * 2]) + " times  " + string(numbers[(part * 2) + 1]) + " = " + string(answerVar)

part = 2;

numbers[part * 2] = round(random_range(2,8))
numbers[(part * 2) + 1] = round(random_range(0,3))
answers[part] = numbers[part * 2] * numbers[(part * 2) + 1]
if (round(random_range(1,10)) == 10)
{
	answerVar = answers[part] - random_range(6,30)
	questionsWrong += 1
}
else
{
	answerVar = answers[part]
}
questions[part] = string(numbers[part * 2]) + " times  " + string(numbers[(part * 2) + 1]) + " = " + string(answerVar)

part = 3;

numbers[part * 2] = round(random_range(2,8))
numbers[(part * 2) + 1] = round(random_range(0,3))
answers[part] = numbers[part * 2] * numbers[(part * 2) + 1]
if (round(random_range(1,10)) == 10)
{
	answerVar = answers[part] - random_range(6,30)
	questionsWrong += 1
}
else
{
	answerVar = answers[part]
}
questions[part] = string(numbers[part * 2]) + " times  " + string(numbers[(part * 2) + 1]) + " = " + string(answerVar)

part = 4;

numbers[part * 2] = round(random_range(2,8))
numbers[(part * 2) + 1] = round(random_range(0,3))
answers[part] = numbers[part * 2] * numbers[(part * 2) + 1]
if (round(random_range(1,10)) == 10)
{
	answerVar = answers[part] - random_range(6,30)
	questionsWrong += 1
}
else
{
	answerVar = answers[part]
}
questions[part] = string(numbers[part * 2]) + " times  " + string(numbers[(part * 2) + 1]) + " = " + string(answerVar)