
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l1 l0)) )
(assert (or (= l0 l2) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
