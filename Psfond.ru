<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Опросник: процессы отдела продаж «как есть»</title>
<style>
  :root {
    --navy: #1d3557;
    --navy-light: #e8f0fe;
    --orange: #e76f51;
    --green: #2d6a4f;
    --bg: #eef2f5;
    --text: #1a1a2e;
    --muted: #5a5a6a;
    --border: #dce1e6;
  }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body {
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: var(--bg);
    color: var(--text);
    padding: 30px 16px;
    display: flex;
    justify-content: center;
  }
  .wrap { max-width: 900px; width: 100%; }
  .card {
    background: #fff;
    border-radius: 18px;
    padding: 34px 38px;
    box-shadow: 0 12px 30px rgba(0,0,0,.06);
    border: 1px solid var(--border);
  }
  h1 { font-size: 1.6rem; color: var(--navy); margin-bottom: 6px; }
  .sub { color: var(--muted); font-size: .95rem; margin-bottom: 24px; }
  .progress {
    height: 8px; background: var(--border); border-radius: 8px;
    overflow: hidden; margin-bottom: 26px;
  }
  .progress > div { height: 100%; width: 0; background: var(--green); transition: width .3s; }
  .section-title {
    font-size: 1.05rem; font-weight: 700; color: var(--navy);
    margin: 26px 0 12px; padding-bottom: 8px;
    border-bottom: 2px solid var(--navy-light);
  }
  .q { margin-bottom: 18px; }
  .q label {
    display: block; font-weight: 600; font-size: .95rem;
    margin-bottom: 6px; color: var(--text);
  }
  .q .hint { font-weight: 400; font-size: .82rem; color: var(--muted); margin-bottom: 6px; }
  input[type=text], textarea, select {
    width: 100%; padding: 11px 14px;
    border: 1.5px solid var(--border); border-radius: 10px;
    font-size: .95rem; font-family: inherit; color: var(--text);
    background: #fff; transition: border-color .2s;
  }
  input:focus, textarea:focus, select:focus {
    outline: none; border-color: var(--navy); box-shadow: 0 0 0 3px var(--navy-light);
  }
  textarea { resize: vertical; min-height: 80px; }
  .checks { display: flex; flex-wrap: wrap; gap: 8px 18px; margin-top: 6px; }
  .checks label {
    font-weight: 400; font-size: .92rem; display: flex;
    align-items: center; gap: 6px; cursor: pointer;
  }
  .actions { display: flex; gap: 12px; flex-wrap: wrap; margin-top: 30px; }
  button {
    border: none; border-radius: 10px; padding: 13px 26px;
    font-size: .95rem; font-weight: 600; cursor: pointer;
    transition: transform .1s, box-shadow .2s;
  }
  button:active { transform: scale(.98); }
  .btn-primary { background: var(--navy); color: #fff; }
  .btn-primary:hover { box-shadow: 0 6px 16px rgba(29,53,87,.25); }
  .btn-outline { background: #fff; color: var(--navy); border: 1.5px solid var(--navy); }
  .btn-export { background: var(--green); color: #fff; }
  .btn-export:hover { box-shadow: 0 6px 16px rgba(45,106,79,.25); }
  .status {
    margin-top: 18px; font-size: .9rem; color: var(--green);
    font-weight: 600; display: none;
  }
  .hidden { display: none; }
  .role-note {
    background: var(--navy-light); border-left: 4px solid var(--navy);
    padding: 12px 16px; border-radius: 8px; font-size: .9rem;
    color: var(--navy); margin-top: 8px;
  }
  @media (max-width: 700px) {
    .card { padding: 22px 18px; }
    h1 { font-size: 1.3rem; }
  }
</style>
</head>
<body>
<div class="wrap">
  <div class="card">
    <h1>Опросник: процессы отдела продаж «как есть»</h1>
    <p class="sub">Ответы сохраняются в вашем браузере. В конце нажмите «Скачать ответы (JSON)» и отправьте файл руководителю. Заполнение занимает 15–25 минут.</p>
    <div class="progress"><div id="bar"></div></div>

    <form id="form">

      <div class="section-title">1. Общие сведения</div>

      <div class="q">
        <label for="fio">ФИО</label>
        <input type="text" id="fio" name="fio" placeholder="Можно псевдоним">
      </div>

      <div class="q">
        <label for="role">Должность *</label>
        <select id="role" name="role" required>
          <option value="">— выберите должность —</option>
          <option>Заместитель директора по продажам - начальник отдела</option>
          <option>Заместитель начальника отдела</option>
          <option>Заместитель начальника отдела Левый берег</option>
          <option>Заместитель начальника отдела Правый берег</option>
          <option>Руководитель отдела продаж (старший менеджер)</option>
          <option>Старший менеджер</option>
          <option>Менеджер по работе с клиентами</option>
          <option>Менеджер по работе с партнерами</option>
          <option>Оператор контактного центра</option>
          <option>Ипотечный брокер</option>
          <option>Менеджер по бронированию</option>
          <option>Аналитик</option>
          <option>Ведущий аналитик</option>
          <option>Бренд менеджер</option>
          <option>Специалист по документообороту</option>
        </select>
      </div>

      <div class="q">
        <label for="tenure">Стаж в компании</label>
        <select id="tenure" name="tenure">
          <option value="">— выберите —</option>
          <option>Менее 3 месяцев</option>
          <option>3–6 месяцев</option>
          <option>6–12 месяцев</option>
          <option>1–3 года</option>
          <option>Более 3 лет</option>
        </select>
      </div>

      <div class="section-title">2. Универсальный блок</div>

      <div class="q">
        <label for="day">Опишите типичный рабочий день по шагам</label>
        <div class="hint">С чего начинаете, что делаете в течение дня, чем заканчиваете.</div>
        <textarea id="day" name="day"></textarea>
      </div>

      <div class="q">
        <label for="tasks">5–7 задач, которые занимают больше всего времени</label>
        <textarea id="tasks" name="tasks"></textarea>
      </div>

      <div class="q">
        <label for="extra">Задачи, которые вы делаете, хотя они не входят в вашу должностную инструкцию</label>
        <textarea id="extra" name="extra"></textarea>
      </div>

      <div class="q">
        <label>Системы и инструменты, которые используете ежедневно</label>
        <div class="checks" id="systems">
          <label><input type="checkbox" name="systems" value="CRM"> CRM</label>
          <label><input type="checkbox" name="systems" value="1С"> 1С</label>
          <label><input type="checkbox" name="systems" value="Мой клиент"> «Мой клиент»</label>
          <label><input type="checkbox" name="systems" value="Домклик"> «Домклик»</label>
          <label><input type="checkbox" name="systems" value="Крона"> «Крона»</label>
          <label><input type="checkbox" name="systems" value="Живо сайт"> «Живо сайт»</label>
          <label><input type="checkbox" name="systems" value="Excel"> Excel</label>
          <label><input type="checkbox" name="systems" value="WhatsApp"> WhatsApp</label>
          <label><input type="checkbox" name="systems" value="Telegram"> Telegram</label>
          <label><input type="checkbox" name="systems" value="Почта"> Почта</label>
          <label><input type="checkbox" name="systems" value="ЭЦП"> ЭЦП</label>
          <label><input type="checkbox" name="systems" value="Банковские сервисы"> Банковские сервисы</label>
        </div>
        <input type="text" name="systems_other" placeholder="Допишите другие системы через запятую" style="margin-top:8px">
      </div>

      <div class="q">
        <label for="manual">В каких системах вы работаете вне CRM или дублируете данные вручную?</label>
        <textarea id="manual" name="manual"></textarea>
      </div>

      <div class="q">
        <label for="docs">Какие документы вы создаёте, получаете или передаёте?</label>
        <div class="hint">Заявка, карточка клиента, протокол сделки, бронь, счёт, ДДУ/ДКП, акт, реестр, отчёт и т.д.</div>
        <textarea id="docs" name="docs"></textarea>
      </div>

      <div class="q">
        <label for="interact">Кому подчиняетесь и с кем взаимодействуете?</label>
        <textarea id="interact" name="interact"></textarea>
      </div>

      <div class="q">
        <label for="decisions">Какие решения принимаете самостоятельно, а какие — через согласование?</label>
        <div class="hint">Укажите, с кем и как долго согласуете.</div>
        <textarea id="decisions" name="decisions"></textarea>
      </div>

      <div class="q">
        <label for="problems">2–3 проблемные ситуации, где процесс «буксовал» или ломался</label>
        <textarea id="problems" name="problems"></textarea>
      </div>

      <div class="q">
        <label for="good">Что в текущих процессах работает хорошо?</label>
        <textarea id="good" name="good"></textarea>
      </div>

      <div class="q">
        <label for="change">Что нужно изменить в первую очередь?</label>
        <textarea id="change" name="change"></textarea>
      </div>

      <div class="q">
        <label for="automate">Если бы вы могли автоматизировать одну свою задачу — какую и почему?</label>
        <textarea id="automate" name="automate"></textarea>
      </div>

      <div class="section-title">3. Вопросы по вашей должности</div>
      <div id="role-specific"></div>

      <div class="actions">
        <button type="button" class="btn-outline" onclick="saveDraft()">Сохранить черновик</button>
        <button type="button" class="btn-primary" onclick="submitForm()">Завершить и проверить</button>
        <button type="button" class="btn-export" onclick="exportJSON()">Скачать ответы (JSON)</button>
      </div>
      <div class="status" id="status"></div>
    </form>
  </div>
</div>

<script>
const roleQuestions = {
  "Заместитель директора по продажам - начальник отдела": [
    "Как вы распределяете задачи между заместителями, РОПами и менеджерами?",
    "Какие KPI вы контролируете ежедневно, еженедельно, ежемесячно?",
    "Опишите процесс согласования скидок и нестандартных условий: кто инициирует, кто согласует, сколько времени занимает.",
    "Как вы контролируете качество звонков и презентаций? Опишите процедуру и периодичность.",
    "Какие отчёты вы получаете от аналитика и какие формируете сами?",
    "Как вы взаимодействуете с дирекцией по маркетингу и с исполнительным директором?",
    "Опишите процесс бюджетирования продаж: кто участвует, как часто пересматривается, какие триггеры для перераспределения."
  ],
  "Заместитель начальника отдела": [
    "Чем отличается ваш функционал от функционала «Заместителя директора по продажам — начальника отдела»?",
    "Какие задачи вы выполняете по мобильным офисам (обеспечение, логистика, контроль)?",
    "Как вы контролируете работу РОПов и менеджеров?",
    "Опишите процесс согласования броней и скидок в рамках ваших лимитов.",
    "Какие хозяйственные задачи вы закрываете (закупки, ремонт, мебель)?"
  ],
  "Заместитель начальника отдела Левый берег": [
    "Чем отличается ваш функционал от функционала «Заместителя директора по продажам — начальника отдела»?",
    "Какие задачи вы выполняете по мобильным офисам на Левом берегу?",
    "Как вы контролируете работу РОПов и менеджеров на Левом берегу?",
    "Опишите процесс согласования броней и скидок в рамках ваших лимитов.",
    "Какие хозяйственные задачи вы закрываете?"
  ],
  "Заместитель начальника отдела Правый берег": [
    "Чем отличается ваш функционал от функционала «Заместителя директора по продажам — начальника отдела»?",
    "Какие задачи вы выполняете по мобильным офисам на Правом берегу?",
    "Как вы контролируете работу РОПов и менеджеров на Правом берегу?",
    "Опишите процесс согласования броней и скидок в рамках ваших лимитов.",
    "Какие хозяйственные задачи вы закрываете?"
  ],
  "Руководитель отдела продаж (старший менеджер)": [
    "Сколько менеджеров у вас в подчинении?",
    "Как вы ставите задачи на день/неделю/месяц?",
    "Опишите процесс прослушивания звонков и обратной связи менеджеру.",
    "Как вы проводите тайного покупателя? Опишите процедуру.",
    "Как вы контролируете конверсию по этапам воронки? Какие этапы в CRM смотрите?",
    "Как вы работаете со сложными сделками и «зависшими» клиентами?",
    "Как вы взаимодействуете с ипотечным брокером и специалистом по документообороту?",
    "Какие отчёты вы сдаёте наверх и с какой периодичностью?"
  ],
  "Старший менеджер": [
    "Чем ваша работа отличается от работы менеджера по работе с клиентами?",
    "Ведёте ли вы наставничество? Опишите, как оно устроено.",
    "Какие сделки вы ведёте лично, а какие передаёте?",
    "Как вы контролируете качество работы других менеджеров?"
  ],
  "Менеджер по работе с клиентами": [
    "Опишите полный цикл вашей работы с клиентом от первого контакта до передачи в сопровождение.",
    "Какие этапы вы фиксируете в CRM? Все ли этапы фактически фиксируются?",
    "Как вы работаете с бронями: кто ставит, кто снимает, что делаете при истечении?",
    "Как вы взаимодействуете с ипотечным брокером (канал связи, скорость ответа)?",
    "Как вы передаёте документы юристам и специалисту по документообороту?",
    "Что вы делаете при отказе клиента? Опишите сценарий.",
    "Какие возражения клиентов встречаются чаще всего и как вы их отрабатываете?"
  ],
  "Менеджер по работе с партнерами": [
    "Опишите процесс онбординга нового агентства: шаги, документы, сроки.",
    "Как вы мотивируете АН продавать конкретные лоты? Опишите систему.",
    "Как вы контролируете качество работы риелторов? Какие инструменты используете?",
    "Как вы решаете конфликты между агентами и вашей компанией?",
    "Какие отчёты по партнёрскому каналу вы формируете и для кого?",
    "Как вы взаимодействуете с бренд-менеджером и маркетингом по мероприятиям для АН?"
  ],
  "Оператор контактного центра": [
    "Опишите скрипт обработки входящего звонка по шагам.",
    "Как вы определяете целевой/нецелевой лид? По каким критериям?",
    "Как вы распределяете заявки между менеджерами (график дежурств, правила)?",
    "Как вы работаете с уведомлениями от риелторов из «Мой клиент» и почты?",
    "Опишите процесс оспаривания некачественных платных звонков (Авито, Яндекс).",
    "Какие Excel-отчёты вы ведёте вручную и зачем?",
    "Какие несвойственные задачи вы выполняете (заказ воды, хозтоваров, канцелярии)?"
  ],
  "Ипотечный брокер": [
    "Опишите полный цикл ипотечной сделки от заявки до регистрации.",
    "Почему вы ведёте Excel-таблицу, а не CRM? Что мешает работать в CRM?",
    "Как вы взаимодействуете с менеджерами по продажам (каналы, скорость)?",
    "Как вы согласуете объект залога с банком? Опишите шаги.",
    "Как вы получаете и проверяете ипотечное решение?",
    "Какие банки-партнёры используются и по каким критериям выбираете банк под клиента?",
    "Что происходит при отказе банка? Опишите сценарий.",
    "Какие документы вы передаёте юристам и в каком виде?"
  ],
  "Менеджер по бронированию": [
    "Опишите процесс постановки брони по шагам: от задачи менеджера до записи в 1С/CRM.",
    "Какие системы вы используете одновременно (CRM, 1С, Excel, «Мой клиент»)?",
    "Как вы проверяете уникальность клиента в «Мой клиент» и «Домклик»?",
    "Опишите процесс смены статусов квартиры: «Бронь» → «Сделка в работе» → «Продана».",
    "Как вы формируете «шахматку» и карточки квартир?",
    "Как вы меняете цены и кто даёт команду?",
    "Что происходит при истечении брони? Опишите сценарий."
  ],
  "Аналитик": [
    "Какие отчёты вы формируете ежедневно, еженедельно, ежемесячно? Перечислите.",
    "Как вы считаете конверсию по этапам воронки? Какие данные берёте?",
    "Как вы сверяете данные между 1С, CRM и Excel? Опишите процесс.",
    "Как вы формируете прайсы на новые объекты? Опишите шаги.",
    "Как вы готовите БДР/БДДС и график платежей?",
    "Как вы анализируете конкурентов? Какие источники используете?",
    "Какие данные по продажам вы получаете от менеджеров и в каком виде?"
  ],
  "Ведущий аналитик": [
    "Какие отчёты вы формируете ежедневно, еженедельно, ежемесячно? Перечислите.",
    "Как вы считаете конверсию по этапам воронки? Какие данные берёте?",
    "Как вы сверяете данные между 1С, CRM и Excel? Опишите процесс.",
    "Как вы формируете прайсы на новые объекты? Опишите шаги.",
    "Как вы готовите БДР/БДДС и график платежей?",
    "Как вы анализируете конкурентов? Какие источники используете?",
    "Какие данные по продажам вы получаете от менеджеров и в каком виде?"
  ],
  "Бренд менеджер": [
    "Опишите процесс организации выездного мероприятия для АН: шаги, участники, документы.",
    "Как вы ведёте Telegram-канал для агентов? Кто готовит контент?",
    "Как вы организуете брокер-туры на стройку?",
    "Как вы взаимодействуете с отделом маркетинга по материалам и публикациям?",
    "Как вы участвуете в разрешении конфликтов между агентами?",
    "Какие таблицы активности вы ведёте и для кого?"
  ],
  "Специалист по документообороту": [
    "Опишите процесс проверки протокола сделки от менеджера: шаги, чек-лист.",
    "Как вы сверяете данные с CRM и прайсами?",
    "Опишите процесс заключения договоров с АН и банками.",
    "Как вы готовите и отправляете выгрузки по закрытым сделкам?",
    "Как вы принимаете акты и проверяете комиссии (включая «Домклик»)?",
    "Опишите процесс ведения архива оригиналов договоров и выдачи их клиентам.",
    "Какие реестры вы ведёте и в каких системах (1С, Excel, CRM)?"
  ]
};

const roleSelect = document.getElementById('role');
const roleContainer = document.getElementById('role-specific');

function renderRoleQuestions() {
  const role = roleSelect.value;
  roleContainer.innerHTML = '';
  if (!role || !roleQuestions[role]) {
    roleContainer.innerHTML = '<div class="role-note">Выберите должность, чтобы увидеть вопросы по вашей роли.</div>';
    return;
  }
  const title = document.createElement('div');
  title.className = 'role-note';
  title.textContent = 'Вопросы для должности: ' + role;
  roleContainer.appendChild(title);
  roleQuestions[role].forEach((q, i) => {
    const div = document.createElement('div');
    div.className = 'q';
    div.innerHTML = `<label>${i+1}. ${q}</label><textarea name="role_q_${i}"></textarea>`;
    roleContainer.appendChild(div);
  });
  updateProgress();
}

roleSelect.addEventListener('change', renderRoleQuestions);
renderRoleQuestions();

function collectData() {
  const form = document.getElementById('form');
  const fd = new FormData(form);
  const data = { timestamp: new Date().toISOString(), role: roleSelect.value, answers: {} };
  for (const [k, v] of fd.entries()) {
    if (k === 'systems') {
      if (!data.answers.systems) data.answers.systems = [];
      data.answers.systems.push(v);
    } else {
      data.answers[k] = v;
    }
  }
  data.role_questions = {};
  if (roleQuestions[roleSelect.value]) {
    roleQuestions[roleSelect.value].forEach((q, i) => {
      data.role_questions[q] = data.answers['role_q_' + i] || '';
    });
  }
  return data;
}

function saveDraft() {
  localStorage.setItem('op_draft', JSON.stringify(collectData()));
  showStatus('Черновик сохранён в браузере. Не забудьте в конце скачать JSON.');
}

function submitForm() {
  const data = collectData();
  if (!data.role) { showStatus('Выберите должность.', true); return; }
  saveDraft();
  showStatus('Форма заполнена. Нажмите «Скачать ответы (JSON)» и отправьте файл руководителю.');
}

function exportJSON() {
  const data = collectData();
  const blob = new Blob([JSON.stringify(data, null, 2)], { type: 'application/json' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = 'oprosnik_' + (data.role || 'role').replace(/\s+/g, '_') + '_' + Date.now() + '.json';
  a.click();
  URL.revokeObjectURL(url);
}

function showStatus(msg, isError) {
  const el = document.getElementById('status');
  el.textContent = msg;
  el.style.display = 'block';
  el.style.color = isError ? '#c1121f' : '#2d6a4f';
}

function updateProgress() {
  const form = document.getElementById('form');
  const total = form.querySelectorAll('textarea, input[type=text], select').length;
  let filled = 0;
  form.querySelectorAll('textarea, input[type=text], select').forEach(el => {
    if (el.value && el.value.trim()) filled++;
  });
  document.getElementById('bar').style.width = Math.round((filled / total) * 100) + '%';
}

document.getElementById('form').addEventListener('input', updateProgress);
document.getElementById('form').addEventListener('change', updateProgress);

// Восстановление черновика
const draft = localStorage.getItem('op_draft');
if (draft) {
  try {
    const d = JSON.parse(draft);
    if (d.answers) {
      Object.entries(d.answers).forEach(([k, v]) => {
        const el = document.querySelector(`[name="${k}"]`);
        if (el) el.value = v;
      });
    }
    if (d.role) {
      roleSelect.value = d.role;
      renderRoleQuestions();
      if (d.role_questions) {
        Object.values(d.role_questions).forEach((val, i) => {
          const el = document.querySelector(`[name="role_q_${i}"]`);
          if (el) el.value = val;
        });
      }
    }
    updateProgress();
  } catch (e) {}
}
</script>
</body>
</html>
