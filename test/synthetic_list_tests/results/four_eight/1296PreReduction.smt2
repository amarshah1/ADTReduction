
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
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil l1) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (and (is-Cons l1) (= l1 Nil) (is-Cons Nil) (= l2 l2)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
