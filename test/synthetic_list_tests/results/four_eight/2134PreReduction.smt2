
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
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Cons l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(assert (not (= l0 Nil)) )
(check-sat)