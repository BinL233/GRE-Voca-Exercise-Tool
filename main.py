import openpyxl
import random

work = openpyxl.load_workbook('3000.xlsx')
incor = openpyxl.load_workbook('IncorrectList.xlsx')


sheet1_in = incor['Sheet1']


sheet1 = work['3000']
print("Max row: " + sheet1.dimensions) 

min = int(input("Choose the min position of words list: "))
max = int(input("Choose the max position of words list: "))

while True:
    value = random.randint(min, max)
    ques = sheet1["I" + str(value)].value
    print(ques)

    input('')
    ans = sheet1["L" + str(value)].value
    print(ans)

    ifcorrect = input('Is your answer correct? [Y/N]: ')
    print('\n')
    if ifcorrect == 'Y':
        pass

    else:
        row_value = [ques, ans]
        sheet1_in.append(row_value)
        incor.save('IncorrectList.xlsx')

