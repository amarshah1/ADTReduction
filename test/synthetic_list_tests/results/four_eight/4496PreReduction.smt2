
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
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Cons l3) (= l3 Nil)) )
(assert (and (= l3 l1) (= l3 Nil) (is-Cons l0)) )
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (not (is-Nil l0)) )
(check-sat)
