
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
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (is-Cons l3) (= l2 Nil)) )
(check-sat)
