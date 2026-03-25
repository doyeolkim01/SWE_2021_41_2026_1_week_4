FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "def isHappy(n):\n    cycle = set()\n    while n != 1 and n not in cycle:\n        cycle.add(n)\n        n = sum(int(i)**2 for i in str(n))\n    if n == 1:\n        return True\n    else:\n        return False\nprint(isHappy(19))\nprint(isHappy(2))"]
