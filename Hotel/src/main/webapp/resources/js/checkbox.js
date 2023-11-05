document.querySelector('#checkAll');
checkAll.addEventListener('click', function(){
    const isChecked = checkAll.checked;
    if(isChecked){
        const checkboxes = document.querySelectorAll('.chk');
        for(const checkbox of checkboxes){
            checkbox.checked = false;
        }
        clearCheckedTypes();
    }
    else{
        checkAll.checked = true;
        }
    })
if (document.querySelectorAll('.chk:checked').length === 0) {
    checkAll.checked = true;
}
const checkboxes = document.querySelectorAll('.chk');
for(const checkbox of checkboxes){
  checkbox.addEventListener('click',function(){
    const totalCnt = checkboxes.length;
    const checkedCnt = document.querySelectorAll('.chk:checked').length;
    if(totalCnt == checkedCnt){
      document.querySelector('#checkAll').checked = true;
      for (const chk of checkboxes) {
                    chk.checked = false;
            }
    }
    else{
      document.querySelector('#checkAll').checked = false;
    }
  });
}

checkboxes.forEach(checkbox => {
  checkbox.addEventListener("change", function() {
    // 체크된 체크박스의 값을 배열에 추가 또는 제거
    if (this.checked) {
      // 중복 확인
      if (!checkedTypes.includes(this.value)) {
        checkedTypes.push(this.value);
      }
    } else {
      const index = checkedTypes.indexOf(this.value);
      if (index !== -1) {
        checkedTypes.splice(index, 1);
      }
    }
    
    // 배열에 있는 체크박스 값을 출력 (테스트용)
    alert(checkedTypes);
  });
});