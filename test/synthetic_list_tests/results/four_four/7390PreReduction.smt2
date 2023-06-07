
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
(assert (is-Cons Nil) )
(assert (and (= l3 l2) (= l0 l3) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons l1) (= l1 Nil) (is-Cons l0)) )
(check-sat)
