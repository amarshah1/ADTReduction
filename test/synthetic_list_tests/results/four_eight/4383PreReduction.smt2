
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
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons l3) (is-Cons Nil) (is-Cons l3)) )
(assert (or (= l1 l2) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(check-sat)
