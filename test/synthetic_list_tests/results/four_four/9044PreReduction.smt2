
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
(assert (and (= l1 l3) (is-Cons Nil) (is-Cons l3) (= l0 Nil)) )
(assert (and (= l2 l2) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l0 l2)) )
(assert (or (= l1 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
