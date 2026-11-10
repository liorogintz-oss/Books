# ספריית הבית

קטלוג ספרים משפחתי: מקלידים ISBN והפרטים והכריכה מתמלאים (Google Books / Open Library), וכל אחד מהבית — רביד, עדי, קרן וליאור — רושם סטטוס קריאה, דירוג וחוות דעת.

האתר: https://liorogintz-oss.github.io/Books/

## קבצים
- `app.html` — מקור הדף. הוא מתפרסם גם כ־Artifact ב־claude.ai.
- `index.html` — הדף ל־GitHub Pages. נוצר מ־`app.html` על ידי `./build.sh`, ולא עורכים אותו ידנית.
- `firebase-config.js` — הגדרות פרויקט ה־Firebase. כל עוד הערך הוא `null`, הנתונים נשמרים רק בדפדפן.
- `firestore.rules` — כללי האבטחה שמדביקים ב־Firebase.

## חיבור ל־Firebase (פעם אחת)
1. ב־https://console.firebase.google.com: Add project. אפשר לכבות את Google Analytics.
2. Build → Firestore Database → Create database. בוחרים מיקום (למשל `eur3`) ומצב Production.
3. בלשונית Rules מדביקים את התוכן של `firestore.rules` ולוחצים Publish.
4. Project settings (גלגל השיניים) → Your apps → סמל ה־Web (`</>`) → רושמים אפליקציה. מעתיקים את האובייקט `firebaseConfig` אל `firebase-config.js`.
5. פותחים את האתר, לוחצים "יצירת ספרייה חדשה" ושולחים את קישור ההזמנה לכל המשפחה.

הקישור כולל קוד אקראי ארוך, ורק מי שיש לו את הקישור יכול לקרוא או לכתוב בספרייה. לכן לא מפרסמים אותו ברבים.

## יומן התנסות בהוראה
`practicum/index.html` — מעקב אחרי ימי התנסות בהוראה לפי טופס הדו"ח היומי (שיעורים, סוג פעילות, חתימת מורה מאמנת, רפלקציה), עם צילום של הטופס החתום, הדפסה בפורמט הטופס, ייצוא ל־CSV וגיבוי. היומן נפרד לגמרי מהספרייה: יש לו פרויקט Firebase משלו (`practicum/firebase-config.js`) וכללים משלו (`practicum/firestore.rules`). הנתונים נשמרים תחת קישור פרטי עם קוד אקראי, ועותק נשמר גם בדפדפן.
האתר: https://liorogintz-oss.github.io/Books/practicum/
