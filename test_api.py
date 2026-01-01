import json
import requests

def get_questions_mock(topic):
    """
    دالة ذكية: تحاول الاتصال بالذكاء الاصطناعي، 
    وإذا فشلت تعيد بيانات وهمية (Mock Data) لضمان استمرار عمل المشروع.
    """
    try:
        # هنا نضع كود Groq أو Gemini الذي جربناه سابقاً
        # (سأفترض أنه سيفشل الآن بسبب الحظر)
        raise ConnectionError("Network Restricted") 
        
    except Exception:
        # إذا فشل الاتصال، نعيد هذه البيانات الجاهزة
        print("⚠️ ملاحظة: تم استخدام بيانات محاكاة (Mock) بسبب تعذر الاتصال بالسيرفر.")
        
        mock_data = [
            {
                "question": f"ما هي عاصمة الدولة الأموية التي اشتهرت في {topic}؟",
                "options": ["دمشق", "بغداد", "القاهرة", "مكة"],
                "answer": "دمشق"
            },
            {
                "question": "من هو مؤسس الدولة الأموية؟",
                "options": ["عمر بن عبد العزيز", "معاوية بن أبي سفيان", "عبد الملك بن مروان", "يزيد بن معاوية"],
                "answer": "معاوية بن أبي سفيان"
            },
            {
                "question": "في أي عام سقطت الدولة الأموية؟",
                "options": ["132 هـ", "656 هـ", "400 هـ", "90 هـ"],
                "answer": "132 هـ"
            }
        ]
        return mock_data

# تجربة التشغيل
if __name__ == "__main__":
    questions = get_questions_mock("تاريخ الدولة الأموية")
    print(json.dumps(questions, indent=4, ensure_ascii=False))