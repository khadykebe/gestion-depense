import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DepenseUpdateComponent } from './depense-update.component';

describe('DepenseUpdateComponent', () => {
  let component: DepenseUpdateComponent;
  let fixture: ComponentFixture<DepenseUpdateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DepenseUpdateComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DepenseUpdateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
